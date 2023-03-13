import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moz888bet/app/ui/wallet/components.dart';

import 'balancetdetais/detailsui.dart';
import 'graphicbalance/graphicui.dart';

export 'balancetdetais/detailsui.dart';
export 'graphicbalance/graphicui.dart';

class Componets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return LayoutBuilder(builder: (context, constraints) {
      return !ResponsiveLayout.isMobile(context)
          ? Row(children: [
              Expanded(
                child: AspectRatio(
                  aspectRatio: 1,
                  child: GraphigBalance(
                      size: Size(constraints.minWidth, constraints.minHeight)),
                ),
              ),
              Expanded(child: BalanceDetails())
            ])
          : Column(
              children: [
                Expanded(
                    child: GraphigBalance(
                        size:
                            Size(constraints.minWidth, constraints.minHeight))),
                SizedBox(
                  height: 10,
                ),
                Expanded(child: BalanceDetails()),
              ],
            );
    });
  }
}
