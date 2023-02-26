import 'package:flutter/material.dart';

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
