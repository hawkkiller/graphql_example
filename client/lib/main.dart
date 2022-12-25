import 'package:artemis/artemis.dart';
import 'package:client/feature/todo/widget/todo_screen.dart';
import 'package:flutter/material.dart';

late final ArtemisClient client;

void main() {
  client = ArtemisClient(
    'http://localhost:8080/graphql',
  );
  runApp(const TodoApp());
}

/// {@template main}
/// TodoApp widget
/// {@endtemplate}
class TodoApp extends StatelessWidget {
  /// {@macro main}
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const TodoScreen(),
      );
} // TodoApp
