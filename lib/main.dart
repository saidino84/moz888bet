import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moz888bet/app/ui/aviator/dashbord.dart';
import 'package:moz888bet/app/ui/wallet/wallet.dart';
import 'package:moz888bet/app/ui/wallet/wallet_pallets.dart';

void main(List<String> args) {
  runApp(Moz888Bet());
}

class Moz888Bet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          primaryColor: WalletPalet.primaryColor,
          scaffoldBackgroundColor: WalletPalet.bgcolor,
          canvasColor: WalletPalet.bgcolor,
          textTheme: Theme.of(context)
              .textTheme
              .apply(bodyColor: Colors.white)
              .copyWith(
                  bodyText1: TextStyle(color: WalletPalet.bodyTextcolor),
                  bodyText2: TextStyle(color: WalletPalet.bodyTextcolor))),
      home: WalletPage(),
    );
  }
}
