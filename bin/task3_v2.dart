import 'task1.dart';

List<int> values = [76, 66, 54, 73, 60, 65, 64, 93, 85, 62];
Map<String, int> students = Map.fromIterables(names, values);


//Names are taken from task 1, grades are in 'values'
void main() {
  print(students);

  students['Tim'] = 99;
  students['Thomas'] = 100;
  students.remove('Charles');

  int count = 0;

  students.forEach((name, grade) {
    print('$name: $grade');
    count += grade;
  });

  final averageGrade = count/students.length;
  print('\nAverage grade: ${averageGrade.toStringAsFixed(2)}');
}