import 'dart:math';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'componets/betting.dart';
import 'componets/skills_card.dart';

class AviatorPage extends StatelessWidget {
  @override
  Widget build(Object context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: Colors.black87,
        child: SafeArea(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                constraints: const BoxConstraints(maxHeight: 32),
                color: Colors.black87,
                padding: EdgeInsets.all(8),
                child: Text.rich(TextSpan(
                    text: 'Casino',
                    style: TextStyle(color: Colors.grey),
                    children: [
                      TextSpan(
                          text: ' Aviator',
                          style: TextStyle(color: Colors.white))
                    ])),
              ),
              Container(
                padding: EdgeInsets.all(5.0),
                width: double.infinity,
                constraints: const BoxConstraints(maxHeight: 40),
                color: Colors.grey[600],
                child: Row(
                  children: [
                    CircleAvatar(
                        backgroundColor: Colors.white24,
                        child: Image.asset('assets/aviator_jogo.png')),
                    Spacer(
                      flex: 3,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.amber[300],
                      child: Icon(
                        Icons.question_mark_outlined,
                        color: Colors.amber[400],
                      ),
                    ),
                    Container(
                      width: 80,
                      padding: EdgeInsets.all(6),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white54),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        ' 3000.00\$',
                        style: TextStyle(
                            color: Colors.white60, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      padding: EdgeInsets.symmetric(horizontal: 6),
                      decoration: BoxDecoration(
                          color: Colors.white38,
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Icon(
                        Icons.menu,
                        color: Colors.white54,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                // color: Colors.grey,
                margin: EdgeInsets.only(
                  top: 8.0,
                  left: 8.0,
                ),
                constraints: BoxConstraints(maxHeight: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      flex: 10,
                      child: Container(
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: List.generate(
                              24,
                              (index) => Round(
                                time: Random().nextDouble() * 12.54,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                          constraints: BoxConstraints(maxWidth: 100),
                          // padding: EdgeInsets.all(5.0),
                          margin: EdgeInsets.only(left: 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.white),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Icon(
                                Icons.restore,
                                size: 20,
                                color: Colors.white,
                              ),
                              Icon(
                                Icons.heart_broken,
                                color: Colors.white,
                                size: 15,
                              )
                            ],
                          )),
                    ),
                    Spacer(
                      flex: 1,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                alignment: Alignment.center,
                constraints: BoxConstraints(maxWidth: 600, minWidth: 300),
                child: SingleChildScrollView(
                  child: Column(
                    children: [SkilsCardBar(), BettinOption()],
                  ),
                ),
              ),
              // FLY RESULTS
            ],
          ),
        ),
      ),
    );
  }
}

class Round extends StatelessWidget {
  final double time;

  const Round({
    required this.time,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3 / 1,
      child: Container(
        margin: EdgeInsets.only(right: 3.0),
        decoration: BoxDecoration(
          color: time < 2
              ? Colors.lightBlue[800]
              : time > 4
                  ? Color.fromARGB(255, 218, 31, 255)
                  : Colors.deepPurple,
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Center(
            child: Text(
          '${time.toStringAsFixed(2)}x',
          style: TextStyle(
            color: Colors.white60,
          ),
        )),
      ),
    );
  }
}
