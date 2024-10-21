import 'task3_v2.dart';
import 'package:collection/collection.dart';

void main() {
  //Map students are taken from task 1, grades are in 'values'
  print(students);

  //Perform the function of determining the ranges of grades (since all grades are different)
  String determineRange(int grade) => switch (grade) {
    <= 60 => '0-60',
    <= 70 => '61-70',
    <= 80 => '71-80',
    <= 90 => '81-90',
    _ => '91-100',
  };

  final groupByStudents = groupBy(students.entries, (entry) => determineRange(entry.value));
  print(groupByStudents);


  for (final range in ['0-60', '61-70', '71-80', '81-90', '91-100']) {
    if (groupByStudents.containsKey(range)) {
      print('\nRage value $range, students:');
      for (final student in groupByStudents[range]!) {
        print(' - ${student.key}, grade: ${student.value}');
      }
    }
  }
}