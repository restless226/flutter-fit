import 'package:flutter/cupertino.dart';

class Cardio {
  final String title;
  final String imageUrl;
  final String id;
  final String difficulty;
  final List<String> description;
  final String equipment;
  final int repetitions; // depends on difficulty
  final int time; // in seconds, depends on difficulty
  final List<String> benefits;

  const Cardio({
    @required this.title,
    @required this.imageUrl,
    @required this.id,
    @required this.difficulty,
    @required this.description,
    @required this.equipment,
    @required this.repetitions,
    @required this.time,
    @required this.benefits,
  });
}
