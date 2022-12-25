// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.12

part of 'todos_subscriptions.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Todos$Subscription$Todo _$Todos$Subscription$TodoFromJson(
        Map<String, dynamic> json) =>
    Todos$Subscription$Todo()
      ..text = json['text'] as String
      ..done = json['done'] as bool;

Map<String, dynamic> _$Todos$Subscription$TodoToJson(
        Todos$Subscription$Todo instance) =>
    <String, dynamic>{
      'text': instance.text,
      'done': instance.done,
    };

Todos$Subscription _$Todos$SubscriptionFromJson(Map<String, dynamic> json) =>
    Todos$Subscription()
      ..todos = (json['todos'] as List<dynamic>)
          .map((e) =>
              Todos$Subscription$Todo.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$Todos$SubscriptionToJson(Todos$Subscription instance) =>
    <String, dynamic>{
      'todos': instance.todos.map((e) => e.toJson()).toList(),
    };
