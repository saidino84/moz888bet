import 'package:flutter/material.dart';

class BettinOption extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      constraints: BoxConstraints(maxHeight: 150, maxWidth: 450),
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Color.fromARGB(66, 68, 68, 68),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Color.fromARGB(137, 59, 58, 58),
        ),
      ),
      child: Column(
        children: [
          Container(
            height: 30,
            width: size.width * 0.8,
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 100,
                  decoration: BoxDecoration(color: Colors.white30),
                ),
                Container(
                  width: 100,
                  decoration:
                      BoxDecoration(color: Color.fromARGB(77, 59, 58, 58)),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
