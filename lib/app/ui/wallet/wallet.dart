import 'dart:math';

import 'package:flutter/material.dart';
import 'package:moz888bet/app/ui/responsive/responsive.dart';

import 'components.dart';

class WalletPage extends StatelessWidget {
  const WalletPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        // width: 100,

        margin: !ResponsiveLayout.isMobile(context)
            ? EdgeInsets.only(left: 35, top: 20)
            : null,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            if (!ResponsiveLayout.isMobile(context))
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
