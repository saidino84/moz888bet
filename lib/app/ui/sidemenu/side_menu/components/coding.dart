import 'package:flutter/material.dart';
import 'package:moz888bet/app/shared/constants.dart';

import 'linear_progress.dart';

class Coding extends StatelessWidget {
  const Coding({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text('Coding', style: Theme.of(context).textTheme.subtitle1),
        ),
        AnimatedLinearProgressIndicator(
          percentage: 5,
          label: 'C++',
        ),
        AnimatedLinearProgressIndicator(
          percentage: 50,
          label: 'Python',
        ),
        AnimatedLinearProgressIndicator(
          percentage: 45,
          label: 'Dart',
        ),
        AnimatedLinearProgressIndicator(
          percentage: 18,
          label: 'JavaScript',
        ),
        AnimatedLinearProgressIndicator(
          percentage: 16,
          label: 'Java',
        ),
        AnimatedLinearProgressIndicator(
          percentage: 67,
          label: 'Html',
        ),
        AnimatedLinearProgressIndicator(
          percentage: 42,
          label: 'Css',
        ),
      ],
    );
  }
}
