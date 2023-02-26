import 'package:flutter/material.dart';

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
