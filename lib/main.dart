import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moz888bet/app/ui/dashbord.dart';

void main(List<String> args) {
  runApp(Moz888Bet());
}

class Moz888Bet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DashBoard(),
    );
  }
}
