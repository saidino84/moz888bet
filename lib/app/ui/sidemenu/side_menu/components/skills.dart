import 'package:flutter/material.dart';

import 'circular_progress.dart';

class Skills extends StatelessWidget {
  const Skills({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          child: Text(
            'Skils',
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ),
        Row(
          children: [
            Expanded(
              child: AnimatedCircularProgress(
                percentage: 65,
                label: 'Python',
              ),
            ),
            Expanded(
              child: AnimatedCircularProgress(
                percentage: 75,
                label: 'Flutter',
              ),
            ),
            Expanded(
              child: AnimatedCircularProgress(
                percentage: 100,
                label: 'Dart',
              ),
            ),
          ],
        ),
      ],
    );
  }
}
