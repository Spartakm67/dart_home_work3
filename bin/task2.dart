void main() {
  Set<int> setFist = {1, 3, 5, 7};
  Set<int> setSecond = {3, 5, 8, 10};

  Set<int> unionSet = setFist.union(setSecond);
  print(unionSet);

  Set<int> intersectionSet = setFist.intersection(setSecond);
  print(intersectionSet);

  Set<int> differenceSetFirst = setFist.difference(setSecond);
  print(differenceSetFirst);

  Set<int> differenceSetSecond = setSecond.difference(setFist);
  print(differenceSetSecond);
}