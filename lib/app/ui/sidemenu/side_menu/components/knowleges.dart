import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:moz888bet/app/shared/constants.dart';

class KnowLedges extends StatelessWidget {
  const KnowLedges({
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
          child: Text(
            'Knowledge',
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        KnowLedgesText(text: 'Flask Python'),
        KnowLedgesText(text: 'Flutter Dart'),
        KnowLedgesText(text: 'Tkinter Python'),
        KnowLedgesText(text: 'Sqlite Databases'),
      ],
    );
  }
}

class KnowLedgesText extends StatelessWidget {
  const KnowLedgesText({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(
        children: [
          SvgPicture.asset('assets/icons/check.svg'),
          SizedBox(
            width: defaultPadding / 2,
          ),
          Text(text),
        ],
      ),
    );
  }
}
