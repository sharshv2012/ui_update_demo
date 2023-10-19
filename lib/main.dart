import 'package:flutter/material.dart';
import 'package:ui_update_demo/keys/keys.dart';
import 'package:ui_update_demo/ui_updates_demo.dart';



void main() {

  final number = [2, 4, 5];
  // number = [3, 7, 8]; you can't assign a new value to final.
  number.add(8); // modification can be done to a final value.

  var num = [9, 8, 7];
  num = [6, 8];
  num.add(5); 

  const no = [4, 8, 9];
  // no = [4, 7]; you can't assign new value to const.
  // no.add(4); //this won't give you a syntax error but a runtime error.
 


  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Internals'),
        ),
        body: const Keys(),
      ),
    );
  }
}
