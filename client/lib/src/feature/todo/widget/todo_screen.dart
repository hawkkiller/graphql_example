import 'package:client/main.dart';
import 'package:client/src/common/graphql/todos_mutation.graphql.dart';
import 'package:client/src/common/graphql/todos_subscriptions.graphql.dart';
import 'package:flutter/material.dart';

/// {@template todo_screen}
/// TodoScreen widget
/// {@endtemplate}
class TodoScreen extends StatefulWidget {
  /// {@macro todo_screen}
  const TodoScreen({super.key});

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  late final TextEditingController _todoController;
  late final Stream<List<Todos$Subscription$Todo>> _todosStream;

  @override
  void initState() {
    super.initState();
    _todoController = TextEditingController();
    final todosSubscription = TodosSubscription();
    _todosStream = wsClient.stream(todosSubscription).map(
          (event) => event.data!.todos,
        );
  }

  Future<void> _createTodo(String text) {
    final createTodoMutation = CreateTodoMutation(
      variables: CreateTodoArguments(
        input: CreateTodoInput(text: text),
      ),
    );
    return httpClient.execute(createTodoMutation);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            title: Text('Todo App'),
            floating: true,
            snap: true,
          ),
          SliverList(
            delegate: SliverChildListDelegate.fixed(
              [
                TextField(
                  controller: _todoController,
                  decoration: const InputDecoration(
                    label: Text('Todo text'),
                  ),
                ),
                ElevatedButton(
                  onPressed: () async {
                    await _createTodo(_todoController.text);
                    _todoController.clear();
                  },
                  child: const Text('Create Todo'),
                ),
              ],
            ),
          ),
          StreamBuilder(
            stream: _todosStream,
            builder: (context, snapshot) {
              final data = snapshot.data;
              if (data == null) {
                return const SliverFillRemaining(
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                );
              }
              if (data.isEmpty) {
                return const SliverFillRemaining(
                  child: Center(
                    child: Text('Todos List is empty'),
                  ),
                );
              }
              return SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) => ListTile(
                    title: Text('Todo ${data[index].text}'),
                  ),
                  childCount: data.length,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
} // TodoScreen
