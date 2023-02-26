import 'package:flutter/material.dart';
import 'package:moz888bet/app/ui/wallet/wallet_pallets.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [Container(color: WalletPalet.bluedark)],
      ),
    );
  }
}
