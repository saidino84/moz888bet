import 'package:flutter/material.dart';
import 'package:moz888bet/app/ui/wallet/wallet_pallets.dart';

class WalletAppBar extends StatelessWidget {
  const WalletAppBar(
    this.size, {
    Key? key,
  }) : super(key: key);
  final Size size;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: WalletPalet.darkcolor),
      // constraints: BoxConstraints(maxHeight: size.height * 0.1, minHeight: 60),
      // constraints: BoxConstraints(maxHeight: size.height * 0.1, minHeight: 60),
      height: 60,

      child: Row(
        children: [
          Text(
            'Wallet',
            style: Theme.of(context)
                .textTheme
                .subtitle1!
                .copyWith(color: Colors.white),
          ),
          SizedBox(width: 10),
          Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white10),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 5,
                ),
                Text(
                  '\$',
                  style: Theme.of(context)
                      .textTheme
                      .subtitle1!
                      .copyWith(color: Colors.white),
                ),
                SizedBox(
                  width: 5,
                ),
                Text('USD', style: Theme.of(context).textTheme.bodyText2),
                SizedBox(
                  width: 5,
                ),
                Icon(Icons.keyboard_arrow_down_rounded),
                SizedBox(
                  width: 5,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
