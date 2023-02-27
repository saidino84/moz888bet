import 'package:flutter/material.dart';
import 'package:moz888bet/app/ui/wallet/wallet_pallets.dart';

class BalanceStatus extends StatelessWidget {
  const BalanceStatus({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 250,
      constraints: BoxConstraints(maxHeight: 300, minHeight: 260),
      // width: double.infinity,
      decoration: BoxDecoration(
          // color: WalletPalet.yellowdown,
          borderRadius: BorderRadius.circular(8)),
      child: Column(
        children: [
          Container(
            height: 35,
            width: double.infinity,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: WalletPalet.secondary,
                borderRadius: BorderRadius.circular(10)),
            child: Text('Your Storage Details'),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
              child: Container(
            color: Colors.white12,
          ))
        ],
      ),
    );
  }
}
