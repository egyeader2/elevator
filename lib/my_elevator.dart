class MyElevator {
  final int totalFloors;
  int currentFloor;
  MyElevator(this.totalFloors, this.currentFloor);
  void goToFloor(int targetFloor) {
    while (currentFloor <= targetFloor -1 ) {
       print('current floor is $currentFloor');
        print('going to floor ${currentFloor + 1}');
        currentFloor = currentFloor + 1;
    }
  }
}
