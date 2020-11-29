import 'constructor.dart';

class ConstructList {
  String name;
  int rollNo;

  listName(int tileNo) {
    return student[tileNo].name;
  }

  listRollNo(int tileNo) {
    return student[tileNo].rollNo;
  }

  List student = [
    Constructor("Tushar", 1),
    Constructor("John", 2),
    Constructor("Yoshi", 3),
    Constructor("Ren", 4),
    Constructor("Lily", 5),
    Constructor("James", 6)
  ];
}
