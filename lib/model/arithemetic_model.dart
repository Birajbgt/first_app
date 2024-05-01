class ArithemeticModel {
  final int first;
  final int second;

  ArithemeticModel({
    required this.first,
    required this.second,
  });

  //Simple Interest
  int add() {
    return first + second;
  }

  int subtract() {
    return first - second;
  }

  int muntiply() {
    return first * second;
  }

  int divide() {
    return first % second;
  }
}
