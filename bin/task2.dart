void main() {
  final setFist = {1, 3, 5, 7};
  final setSecond = {3, 5, 8, 10};

  final unionSet = setFist.union(setSecond);
  print(unionSet);

  final intersectionSet = setFist.intersection(setSecond);
  print(intersectionSet);

  final differenceSetFirst = setFist.difference(setSecond);
  print(differenceSetFirst);

  final differenceSetSecond = setSecond.difference(setFist);
  print(differenceSetSecond);
}