// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart = 2.12

import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'todos_mutation.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class CreateTodo$Mutation$Todo extends JsonSerializable with EquatableMixin {
  CreateTodo$Mutation$Todo();

  factory CreateTodo$Mutation$Todo.fromJson(Map<String, dynamic> json) =>
      _$CreateTodo$Mutation$TodoFromJson(json);

  late String id;

  late String text;

  late bool done;

  @override
  List<Object?> get props => [id, text, done];
  @override
  Map<String, dynamic> toJson() => _$CreateTodo$Mutation$TodoToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateTodo$Mutation extends JsonSerializable with EquatableMixin {
  CreateTodo$Mutation();

  factory CreateTodo$Mutation.fromJson(Map<String, dynamic> json) =>
      _$CreateTodo$MutationFromJson(json);

  late CreateTodo$Mutation$Todo createTodo;

  @override
  List<Object?> get props => [createTodo];
  @override
  Map<String, dynamic> toJson() => _$CreateTodo$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateTodoInput extends JsonSerializable with EquatableMixin {
  CreateTodoInput({required this.text});

  factory CreateTodoInput.fromJson(Map<String, dynamic> json) =>
      _$CreateTodoInputFromJson(json);

  late String text;

  @override
  List<Object?> get props => [text];
  @override
  Map<String, dynamic> toJson() => _$CreateTodoInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateTodoArguments extends JsonSerializable with EquatableMixin {
  CreateTodoArguments({required this.input});

  @override
  factory CreateTodoArguments.fromJson(Map<String, dynamic> json) =>
      _$CreateTodoArgumentsFromJson(json);

  late CreateTodoInput input;

  @override
  List<Object?> get props => [input];
  @override
  Map<String, dynamic> toJson() => _$CreateTodoArgumentsToJson(this);
}

final CREATE_TODO_MUTATION_DOCUMENT_OPERATION_NAME = 'CreateTodo';
final CREATE_TODO_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'CreateTodo'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'CreateTodoInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'createTodo'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: VariableNode(name: NameNode(value: 'input')),
          )
        ],
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

class CreateTodoMutation
    extends GraphQLQuery<CreateTodo$Mutation, CreateTodoArguments> {
  CreateTodoMutation({required this.variables});

  @override
  final DocumentNode document = CREATE_TODO_MUTATION_DOCUMENT;

  @override
  final String operationName = CREATE_TODO_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  final CreateTodoArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  CreateTodo$Mutation parse(Map<String, dynamic> json) =>
      CreateTodo$Mutation.fromJson(json);
}
