// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart = 2.12

import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'todos_subscriptions.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Todos$Subscription$Todo extends JsonSerializable with EquatableMixin {
  Todos$Subscription$Todo();

  factory Todos$Subscription$Todo.fromJson(Map<String, dynamic> json) =>
      _$Todos$Subscription$TodoFromJson(json);

  late String text;

  late bool done;

  @override
  List<Object?> get props => [text, done];
  @override
  Map<String, dynamic> toJson() => _$Todos$Subscription$TodoToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Todos$Subscription extends JsonSerializable with EquatableMixin {
  Todos$Subscription();

  factory Todos$Subscription.fromJson(Map<String, dynamic> json) =>
      _$Todos$SubscriptionFromJson(json);

  late List<Todos$Subscription$Todo> todos;

  @override
  List<Object?> get props => [todos];
  @override
  Map<String, dynamic> toJson() => _$Todos$SubscriptionToJson(this);
}

final TODOS_SUBSCRIPTION_DOCUMENT_OPERATION_NAME = 'todos';
final TODOS_SUBSCRIPTION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.subscription,
    name: NameNode(value: 'todos'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'todos'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'text'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'done'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      )
    ]),
  )
]);

class TodosSubscription
    extends GraphQLQuery<Todos$Subscription, JsonSerializable> {
  TodosSubscription();

  @override
  final DocumentNode document = TODOS_SUBSCRIPTION_DOCUMENT;

  @override
  final String operationName = TODOS_SUBSCRIPTION_DOCUMENT_OPERATION_NAME;

  @override
  List<Object?> get props => [document, operationName];
  @override
  Todos$Subscription parse(Map<String, dynamic> json) =>
      Todos$Subscription.fromJson(json);
}
