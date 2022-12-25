import 'package:client/common/graphql/todos_mutation.graphql.dart';
import 'package:client/common/graphql/todos_query.graphql.dart';
import 'package:client/main.dart';
import 'package:flutter/material.dart';

/// {@template todo_screen}
/// TodoScreen widget
/// {@endtemplate}
class TodoScreen extends StatelessWidget {
  /// {@macro todo_screen}
  const TodoScreen({super.key});

  Future<List<Todos$Query$Todo>> todos() async {
    final todosQuery = TodosQuery();
    final response = await client.execute(todosQuery);
    // create todo
    final createTodoMutation = CreateTodoMutation(
      variables: CreateTodoArguments(
        input: CreateTodoInput(text: 'Todo ${response.data!.todos.length}'),
      ),
    );
    await client.execute(createTodoMutation);
    return response.data!.todos;
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
          FutureBuilder(
              future: todos(),
              builder: (context, snapshot) {
                final data = snapshot.data;
                if (data == null) {
                  return const SliverFillRemaining(
                    child: Center(
                      child: CircularProgressIndicator(),
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
              }),
        ],
      ),
    );
  }
} // TodoScreen
