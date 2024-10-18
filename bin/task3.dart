import 'dart:math';
import 'package:collection/collection.dart';

import 'task1.dart';

//Names are taken from task 1, grades are random
void main() {
Map<String, int> students = {};
int randomGrade () => 50 + Random().nextInt(50);

for (var name in names) {
students[name] = randomGrade();
}
print(students);

students['Tim'] = randomGrade();
students['Thomas'] = 100;
students.remove('Charles');

students.forEach((name, grade) {
  print('$name: $grade');
});

final totalValues = students.values.sum;
final averageGrade = totalValues/students.length;

print('\nAverage grade: ${averageGrade.toStringAsFixed(2)}');
}
