import 'task1.dart';
import 'package:collection/collection.dart';

//Names are taken from task 1, grades are in 'values'
void main() {
  List<int> values = [76, 66, 54, 73, 60, 65, 64, 93, 85, 62];

  Map<String, int> students = Map.fromIterables(names, values);
  print(students);

  //Perform the function of determining the ranges of grades (since all grades are different)
  String determineRange(int value) {
    if (value < 61) {
      return '0-60';
    } else if (value < 71) {
      return '61-70';
    } else if (value < 81) {
      return '71-80';
    } else if (value < 91) {
      return '81-90';
    } else {
      return '91-100';
    }
  }

  final groupStudents = students.entries;
    print(groupStudents);

  final groupByStudents = groupBy(groupStudents, (student) => determineRange(student.value));
    print(groupByStudents);

  groupByStudents.forEach((key, value) {
    print('Value range: $key');
    for (final student in value) {
      print(' - ${student.key} (grade: ${student.value})');
    }
  });
}