void main() {
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

  names.add('Nick');
  print(names);

  names.remove('Charles');

  names.sort();

  final namesUpperCase = names.map((name) => name.toUpperCase()).toList();
  print(namesUpperCase);
}