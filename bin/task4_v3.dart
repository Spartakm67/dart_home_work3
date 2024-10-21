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

  final groupStudents = students.entries;
  print(groupStudents);

  final groupByStudents = groupBy(groupStudents, (student) => determineRange(student.value));
  print(groupByStudents);

  //Specify a list of ranges for ordered output
  final orderedRanges = groupByStudents.keys.toList();

  print('\nUnique grades keys: $orderedRanges');

  orderedRanges.sort((a, b) {
    final aStart = int.parse(a.split('-').first);
    final bStart = int.parse(b.split('-').first);
    final sortRanges = aStart.compareTo(bStart);
    print(sortRanges);
    return sortRanges;
  });

  for (final range in orderedRanges) {
    if (groupByStudents.containsKey(range)) {
      print('\nRage value $range, students:');
      for (final student in groupByStudents[range]!) {
        print(' - ${student.key}, grade: ${student.value}');
      }
    }
  }
}