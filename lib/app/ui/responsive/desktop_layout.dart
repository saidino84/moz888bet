import 'package:flutter/material.dart';
import 'package:moz888bet/app/ui/wallet/boxes/balancestatus/balancete.dart';
import 'package:moz888bet/app/ui/wallet/boxes/exchange/exchangeui.dart';

import '../wallet/components.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(flex: 2, child: SideMenu()),
            Expanded(
                flex: 7,
                child: Column(
                  children: [
                    WalletAppBar(size),
                    Expanded(
                      child: SingleChildScrollView(
                        padding: EdgeInsets.all(10.2),
                        primary: true,
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Expanded(flex: 2, child: ExchangeUi()),
                                SizedBox(
                                  width: 10.0,
                                ),
                                Expanded(flex: 4, child: BalanceStatus())
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            TransfersUi(),
                          ],
                        ),
                      ),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
