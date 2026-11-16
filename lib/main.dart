import 'package:material_ui/material_ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.teal)),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      body:  SafeArea(
        child: Center(
          child: Padding(
            padding: .all(30.0),
            child: Column(
              mainAxisAlignment: .end,
              crossAxisAlignment: .center,
              children: [
                Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(onPressed: (){}, child: Text('1' , style: TextStyle(fontSize: 30)),),
                    ElevatedButton(onPressed: (){}, child: Text('1' , style: TextStyle(fontSize: 30)),),
                    ElevatedButton(onPressed: (){}, child: Text('1' , style: TextStyle(fontSize: 30)),),
                    ElevatedButton(onPressed: (){}, child: Text('1' , style: TextStyle(fontSize: 30)),),
                //      Container(
                //   height: 100,
                //   width: 100,
                //   color: Colors.lightBlue,
                // ),
                //      Container(
                //   height: 100,
                //   width: 100,
                //   color: Colors.teal,
                // ),
                //      Container(
                //   height: 100,
                //   width: 100,
                //   color: Colors.amber,
                // ),
                  ],
                ),
               
              ],
            ),
          ),
        ),
      ),
    );
  }
}
