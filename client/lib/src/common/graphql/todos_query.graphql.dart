// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart = 2.12

import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'todos_query.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Todos$Query$Todo extends JsonSerializable with EquatableMixin {
  Todos$Query$Todo();

  factory Todos$Query$Todo.fromJson(Map<String, dynamic> json) =>
      _$Todos$Query$TodoFromJson(json);

  late String id;

  late String text;

  late bool done;

  @override
  List<Object?> get props => [id, text, done];
  @override
  Map<String, dynamic> toJson() => _$Todos$Query$TodoToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Todos$Query extends JsonSerializable with EquatableMixin {
  Todos$Query();

  factory Todos$Query.fromJson(Map<String, dynamic> json) =>
      _$Todos$QueryFromJson(json);

  late List<Todos$Query$Todo> todos;

  @override
  List<Object?> get props => [todos];
  @override
  Map<String, dynamic> toJson() => _$Todos$QueryToJson(this);
}

final TODOS_QUERY_DOCUMENT_OPERATION_NAME = 'Todos';
final TODOS_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Todos'),
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
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
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

class TodosQuery extends GraphQLQuery<Todos$Query, JsonSerializable> {
  TodosQuery();

  @override
  final DocumentNode document = TODOS_QUERY_DOCUMENT;

  @override
  final String operationName = TODOS_QUERY_DOCUMENT_OPERATION_NAME;

  @override
  List<Object?> get props => [document, operationName];
  @override
  Todos$Query parse(Map<String, dynamic> json) => Todos$Query.fromJson(json);
}
