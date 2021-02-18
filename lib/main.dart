import 'package:flutter/material.dart';
import 'clock.dart';
void main() {
  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData.dark(),
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom Widget of clock'),
      ),
      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Column(
          children: <Widget>[
             Text('Time is'),
            Clock(),
          ],
        ),
      ),
    );
  }
}