
List<String> names = [
  'James',
  'John',
  'Michael',
  'Robert',
  'David',
  'William',
  'Joseph',
  'Charles',
  'Thomas',
  'Daniel'
];


void main() {

  names.add('Nick');
  print(names);

  names.remove('Charles');

  names.sort();

  final namesUpperCase = names.map((name) => name.toUpperCase()).toList();
  print(namesUpperCase);
}