import 'package:artemis/artemis.dart';
import 'package:client/src/feature/todo/widget/todo_screen.dart';
import 'package:flutter/material.dart';
import 'package:gql_link/gql_link.dart';
import 'package:gql_websocket_link/gql_websocket_link.dart';

late final ArtemisClient httpClient;
late final ArtemisClient wsClient;

void main() {
  httpClient = ArtemisClient(
    'http://localhost:8080/graphql',
  );
  wsClient = ArtemisClient.fromLink(
    Link.from([
      WebSocketLink(
        'ws://localhost:8080/graphql',
        reconnectInterval: const Duration(seconds: 5),
        autoReconnect: true,
      ),
    ]),
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
