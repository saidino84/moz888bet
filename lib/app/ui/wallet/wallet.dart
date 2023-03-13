import 'package:flutter/material.dart';
import 'components.dart';
import '../sidemenu/side_menu/side_menu.dart';

class WalletPage extends StatelessWidget {
  const WalletPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(left: 35, top: 20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: SideMenu(),
            ),
            Expanded(
              flex: 7,
              child: Column(
                children: [
                  WalletAppBar(size),
                  Column(
                    children: [
                      ExchangeRateUi(size: size),
                      SizedBox(
                        height: 18,
                      ),
                      TransfersUi()
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
