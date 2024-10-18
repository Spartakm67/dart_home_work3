import 'task1.dart';
import 'package:collection/collection.dart';

//Names are taken from task 1, grades are in 'values'
void main() {
  List<int> values = [76, 66, 54, 73, 60, 65, 64, 93, 85, 62];

  Map<String, int> students = Map.fromIterables(names, values);
  print(students);

  //Perform the function of determining the ranges of grades (since all grades are different)
  String determineRange(int grade) => switch (grade) {
    <= 60 => '0-60',
    <= 70 => '61-70',
    <= 80 => '71-80',
    <= 90 => '81-90',
    _ => '91-100',
  };

  final groupStudents = students.entries;
  print(groupStudents);

  final groupByStudents = groupBy(groupStudents, (student) => determineRange(student.value));
  print(groupByStudents);

  //Specify a list of ranges for ordered output
  final orderedRanges = ['0-60', '61-70', '71-80', '81-90', '91-100'];

  for (var range in orderedRanges) {
    if (groupByStudents.containsKey(range)) {
      print('\nRage value $range, students:');
      for (var student in groupByStudents[range]!) {
        print(' - ${student.key}, grade: ${student.value}');
      }
    }
  }
}