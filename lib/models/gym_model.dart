// enum Difficulty {
//   Beginner,
//   Intermediate,
//   Advanced,
// }

class Gym {
  final String? title;
  final String? imageUrl;
  final String? id;
  final String? difficulty;
  final List<String?>? description;
  final String? muscle; //primary muscle involved
  final String? equipment;
  final int? repetitions; // depends on difficulty
  final int? time; // in seconds, depends on difficulty

  const Gym({
    required this.title,
    required this.imageUrl,
    required this.id,
    required this.difficulty,
    required this.description,
    required this.muscle,
    required this.equipment,
    required this.repetitions,
    required this.time,
  });
}
