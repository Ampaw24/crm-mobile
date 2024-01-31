import 'package:hive/hive.dart';


part 'todotask.g.dart';

@HiveType(typeId: 1)
class Todotask{
  @HiveField(0)
  String title;

  @HiveField(1)
  String date;

  @HiveField(2)
  bool isCompleted;

  @HiveField(3)
  String time;
  Todotask({
    required this.title,
    required this.date,
    required this.isCompleted,
    required this.time,
  });
  // Hive fields go here
}