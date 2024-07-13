// run cmd to generate file: dart run build_runner build

import 'package:isar/isar.dart';
part 'habit.g.dart';

@Collection()
class Habit {
  Id id = Isar.autoIncrement;

  // habit name
  late String name;

  // completed days
  List<DateTime> completedDays = [
    // DateTime(year, month,day),
    // DateTime(2023, 1, 1),
  ];
}
