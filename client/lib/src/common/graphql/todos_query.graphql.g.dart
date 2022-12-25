// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.12

part of 'todos_query.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Todos$Query$Todo _$Todos$Query$TodoFromJson(Map<String, dynamic> json) =>
    Todos$Query$Todo()
      ..id = json['id'] as String
      ..text = json['text'] as String
      ..done = json['done'] as bool;

Map<String, dynamic> _$Todos$Query$TodoToJson(Todos$Query$Todo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
      'done': instance.done,
    };

Todos$Query _$Todos$QueryFromJson(Map<String, dynamic> json) => Todos$Query()
  ..todos = (json['todos'] as List<dynamic>)
      .map((e) => Todos$Query$Todo.fromJson(e as Map<String, dynamic>))
      .toList();

Map<String, dynamic> _$Todos$QueryToJson(Todos$Query instance) =>
    <String, dynamic>{
      'todos': instance.todos.map((e) => e.toJson()).toList(),
    };
