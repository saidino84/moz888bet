import 'package:flutter/material.dart';
import 'package:moz888bet/app/shared/constants.dart';
import 'package:moz888bet/app/ui/wallet/wallet_pallets.dart';

class AnimatedLinearProgressIndicator extends StatelessWidget {
  const AnimatedLinearProgressIndicator({
    Key? key,
    required this.percentage,
    required this.label,
  }) : super(key: key);
  final double percentage;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: defaultPadding),
      child: TweenAnimationBuilder(
          tween: Tween<double>(begin: 0, end: percentage / 100),
          duration: defaultDuration,
          builder: (ctx, double value, child) {
            return Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      this.label,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    Text((value * 100).toInt().toString() + " %")
                  ],
                ),
                SizedBox(
                  height: defaultPadding / 2,
                ),
                LinearProgressIndicator(
                  value: value,
                  backgroundColor: WalletPalet.darkcolor, //darkColor,
                  // color: WalletPalet.primaryColor,
                  color: Colors.amber,
                )
              ],
            );
          }),
    );
  }
}
