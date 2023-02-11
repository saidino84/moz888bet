import 'dart:math';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DashBoard extends StatelessWidget {
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
                    // Text(
                    //   'A v i a t or',
                    //   style: TextStyle(
                    //       color: Colors.red,
                    //       fontSize: 18,
                    //       fontWeight: FontWeight.w700),
                    // ),
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
                height: 5,
              ),

              // FLY RESULTS
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: AspectRatio(
                  aspectRatio: 1.42,
                  child: Container(
                    padding: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: Colors.black26,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: Colors.white54,
                      ),
                    ),
                    child: Column(
                      children: [
                        Text(
                          'S k i l s to W i n ',
                          style: TextStyle(color: Colors.white24),
                        ),
                        Divider(
                          color: Colors.white54,
                          height: 35.21,
                        ),
                        Expanded(
                          child: Row(
                            children: [
                              CircularProgress(
                                  50.0, Color.fromARGB(255, 218, 31, 255)),
                              CircularProgress(
                                  40.25, Colors.lightBlue[800]!.withOpacity(1)),
                              CircularProgress(
                                68.24,
                                Colors.deepPurple,
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          color: Colors.white30,
                          indent: 30,
                          endIndent: 30,
                        ),
                        Expanded(
                            child: Column(
                          children: [
                            HorizontalProgress(
                                12.24, Color.fromARGB(255, 218, 31, 255)),
                            HorizontalProgress(
                                4.24, Colors.lightBlue[800]!.withOpacity(1)),
                            HorizontalProgress(
                              51.24,
                              Colors.deepPurple,
                            ),
                          ],
                        )),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CircularProgress extends StatelessWidget {
  final Color color;
  final double parcents;
  const CircularProgress(
    this.parcents,
    this.color, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: TweenAnimationBuilder(
                tween: Tween<double>(begin: 0, end: this.parcents / 100),
                duration: Duration(seconds: 3),
                builder: (context, double value, widget) => Stack(
                      fit: StackFit.expand,
                      children: [
                        CircularProgressIndicator(
                          color: this.color,
                          backgroundColor: Colors.white10,
                          value: value,
                        ),
                        Center(
                          child: Text(
                            '${(value * 100).toStringAsFixed(2)} %',
                            style: TextStyle(
                              color: this.color,
                            ),
                          ),
                        ),
                      ],
                    )),
          )
        ],
      ),
    );
  }
}

class HorizontalProgress extends StatelessWidget {
  final double maximum;
  final Color color;
  const HorizontalProgress(
    this.maximum,
    this.color, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 5,
        ),
        TweenAnimationBuilder(
            tween: Tween<double>(begin: 0.0, end: this.maximum / 100),
            duration: Duration(seconds: 4),
            builder: (ctx, double value, child) {
              return Row(
                children: [
                  Expanded(
                    child: LinearProgressIndicator(
                      minHeight: 12,
                      value: value,
                      color: this.color,
                      backgroundColor: Colors.white10,
                      // backgroundColor: Colors.black54,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      '${(value * 100).toStringAsFixed(2)} %',
                      style: TextStyle(color: Colors.amber),
                    ),
                  )
                ],
              );
            }),
      ],
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
