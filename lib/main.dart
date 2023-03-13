import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moz888bet/app/bindings/app_bindings.dart';
import 'package:moz888bet/app/ui/responsive/desktop_layout.dart';
import 'package:moz888bet/app/ui/responsive/mobile_layout.dart';
import 'package:moz888bet/app/ui/responsive/tablet_layout.dart';
import 'package:moz888bet/app/ui/responsive/responsive.dart';
import 'package:moz888bet/app/ui/wallet/wallet_pallets.dart';

void main(List<String> args) {
  runApp(Moz888Bet());
}

class Moz888Bet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
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
      getPages: [
        GetPage(
            page: () => ResponsiveLayout(
                  mobile: MobileLayout(),
                  desktop: DesktopLayout(),
                  tablet: TabletLayout(),
                ),
            name: '/',
            bindings: [AppBindings()]),
      ],
    );
  }
}
