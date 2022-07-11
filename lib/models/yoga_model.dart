import 'package:flutter/cupertino.dart';

class Yoga {
  final String? title;
  final String? imageUrl;
  final String? id;
  final String? difficulty;
  final List<String?>? description;
  final List<String?>? benefits;
  final String? category;

  //TODO
  // final int time;  // in seconds, depends on difficulty

  const Yoga({
    required this.title,
    required this.imageUrl,
    required this.id,
    required this.difficulty,
    required this.description,
    required this.benefits,
    required this.category,
    //TODO
    // @required this.time;
  });
}
