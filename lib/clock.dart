import 'package:flutter/material.dart';
import 'dart:async';
import 'package:intl/intl.dart';

class Clock extends StatefulWidget {
  @override
  _ClockState createState() => _ClockState();
}

class _ClockState extends State<Clock> {

  String _value = "Time here";
  Timer _timer;

  @override
  void initState() {
    // TODO: implement initState
    _timer = Timer.periodic(Duration(seconds: 1), _onTimer);
  }

  void _onTimer(Timer timer){
    var now = DateTime.now();
    var formatter = DateFormat("hh:mm:ss");
    String formatted = formatter.format(now);
    setState(() {
      _value = formatted;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(_value,style: TextStyle(color: Colors.blue,fontSize: 32.0,fontWeight: FontWeight.bold),),
    );
  }
}

