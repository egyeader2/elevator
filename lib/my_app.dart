import 'package:material_ui/material_ui.dart';
import 'package:silicon_valley_in_egypt/home_page.dart';

class HamadaApp {

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
