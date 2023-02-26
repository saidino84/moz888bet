import 'package:flutter/material.dart';
import 'package:moz888bet/app/ui/responsive/responsive.dart';

import 'balancestatus/balancete.dart';
import 'exchange/exchangeui.dart';

class ExchangeRateUi extends StatelessWidget {
  const ExchangeRateUi({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: Column(
        children: [
          Expanded(
            flex: 1,
            child: ExchangeUi(),
          ),
          SizedBox(
            width: 18,
          ),
          // Expanded(flex: 7, child: BalanceStatus())
        ],
      ),
      tablet: Container(
        height: 260,
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: ExchangeUi(),
            ),
            SizedBox(
              width: 18,
            ),
            // Expanded(flex: 7, child: BalanceStatus())
          ],
        ),
      ),
      desktop: Container(
        height: 260,
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: ExchangeUi(),
            ),
            SizedBox(
              width: 18,
            ),
            Expanded(flex: 7, child: BalanceStatus())
          ],
        ),
      ),
    );
  }
}
