class Task {
  Task({this.name, this.isDone = false});
  String name;
  bool isDone;

  bool toggleDone() {
    isDone = !isDone;
    return isDone;
  }
}
