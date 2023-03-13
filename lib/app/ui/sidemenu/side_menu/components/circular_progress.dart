import 'package:flutter/material.dart';
import 'package:moz888bet/app/shared/constants.dart';
import 'package:moz888bet/app/ui/wallet/wallet_pallets.dart';

class AnimatedCircularProgress extends StatelessWidget {
  const AnimatedCircularProgress({
    Key? key,
    required this.percentage,
    required this.label,
  }) : super(key: key);
  final double percentage;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: defaultPadding),
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: TweenAnimationBuilder(
                tween: Tween<double>(begin: 0, end: percentage / 100),
                duration: defaultDuration,
                builder: (ctx, double value, child) {
                  return Stack(
                    fit: StackFit.expand,
                    children: [
                      CircularProgressIndicator(
                        value: value,
                        // color: Colors.amberAccent,
                        // backgroundColor: WalletPalet.darkcolor //darkColor,
                        backgroundColor: WalletPalet.darkcolor, //darkColor,
                        // color: WalletPalet.primaryColor,
                        color: Colors.amber,
                      ),
                      Center(
                        child: Text(
                          '${(value * 100).toInt()} %',
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.bodyText2,
                        ),
                      ),
                    ],
                  );
                }),
          ),
          SizedBox(
            height: defaultPadding / 2,
          ),
          Text(
            label,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ],
      ),
    );
  }
}
