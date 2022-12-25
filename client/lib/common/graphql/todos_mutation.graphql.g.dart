// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.12

part of 'todos_mutation.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateTodo$Mutation$Todo _$CreateTodo$Mutation$TodoFromJson(
        Map<String, dynamic> json) =>
    CreateTodo$Mutation$Todo()
      ..id = json['id'] as String
      ..text = json['text'] as String
      ..done = json['done'] as bool;

Map<String, dynamic> _$CreateTodo$Mutation$TodoToJson(
        CreateTodo$Mutation$Todo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
      'done': instance.done,
    };

CreateTodo$Mutation _$CreateTodo$MutationFromJson(Map<String, dynamic> json) =>
    CreateTodo$Mutation()
      ..createTodo = CreateTodo$Mutation$Todo.fromJson(
          json['createTodo'] as Map<String, dynamic>);

Map<String, dynamic> _$CreateTodo$MutationToJson(
        CreateTodo$Mutation instance) =>
    <String, dynamic>{
      'createTodo': instance.createTodo.toJson(),
    };

CreateTodoInput _$CreateTodoInputFromJson(Map<String, dynamic> json) =>
    CreateTodoInput(
      text: json['text'] as String,
    );

Map<String, dynamic> _$CreateTodoInputToJson(CreateTodoInput instance) =>
    <String, dynamic>{
      'text': instance.text,
    };

CreateTodoArguments _$CreateTodoArgumentsFromJson(Map<String, dynamic> json) =>
    CreateTodoArguments(
      input: CreateTodoInput.fromJson(json['input'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CreateTodoArgumentsToJson(
        CreateTodoArguments instance) =>
    <String, dynamic>{
      'input': instance.input.toJson(),
    };
