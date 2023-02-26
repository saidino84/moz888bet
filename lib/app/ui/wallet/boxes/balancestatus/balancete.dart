import 'package:flutter/material.dart';
import 'package:moz888bet/app/ui/wallet/wallet_pallets.dart';

class BalanceStatus extends StatelessWidget {
  const BalanceStatus({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: WalletPalet.secondary, borderRadius: BorderRadius.circular(8)),
    );
  }
}
