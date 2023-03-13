import 'package:flutter/material.dart';
import 'package:moz888bet/app/shared/constants.dart';

class AreaInfoText extends StatelessWidget {
  const AreaInfoText({
    required this.title,
    required this.text,
    Key? key,
  }) : super(key: key);
  final String title, text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(defaultPadding / 2.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('${this.title}'),
          Text("${this.text}"),
        ],
      ),
    );
  }
}
