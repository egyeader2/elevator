import 'package:material_ui/material_ui.dart';
import 'package:silicon_valley_in_egypt/my_elevator.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final elevator = MyElevator(20, 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: .all(30.0),
            child: Column(
              mainAxisAlignment: .start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.arrow_drop_up, size: 40, color: Colors.white),
                    Text(elevator.currentFloor.toString(), style: TextStyle(fontSize: 25, color: Colors.white)),
                    Text('Door: closed', style: TextStyle(fontSize: 25, color: Colors.white)),
                  ],
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: SingleChildScrollView(child: Wrap(children: _renderButtons(elevator.totalFloors, elevator.goToFloor))),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

List<Widget> _renderButtons(int floors, Function callback) {
  List<Widget> buttons = [];

  for (int i = 0; i <= floors; i++) {
    buttons.add(
      Padding(
        padding: const EdgeInsets.all(20.0),
        child: ElevatedButton(
          onPressed: () => callback(i),
          child: Text('$i', style: TextStyle(fontSize: 18)),
        ),
      ),
    );
  }
  return buttons;
}
