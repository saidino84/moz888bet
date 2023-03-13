import 'package:flutter/material.dart';
import 'package:moz888bet/app/controllers/vat_calc_controller.dart';
import 'package:moz888bet/app/ui/wallet/wallet_pallets.dart';

import 'componets/input.dart';

class ExchangeUi extends StatelessWidget {
  const ExchangeUi({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxHeight: 260, minHeight: 200),
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: WalletPalet.secondary, borderRadius: BorderRadius.circular(8)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Exchange'),
          MyInput(
            controller: VatController.priceWithVatInput,
          ),
          Container(
            margin: EdgeInsets.only(top: 8.0),
            height: 38,
            width: double.infinity,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.currency_exchange_sharp,
                  color: Colors.white30,
                ),
                SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Rate',
                        style: TextStyle(fontSize: 8),
                      ),
                      StreamBuilder<double>(
                          stream: VatController.controlstrem.stream,
                          builder: (context, snapshot) {
                            if (snapshot.hasData) {
                              return Text(snapshot.data.toString());
                            }
                            return Text('0.00000020554');
                          })
                    ],
                  ),
                )
              ],
            ),
          ),
          MyInput(),
          SizedBox(
            height: 12,
          ),
          Center(
            child: Container(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  double value =
                      double.tryParse(VatController.priceWithVatInput.text) ??
                          20.0;
                  VatController.getPriceWithVat(value);
                  print('CALC SET');
                },
                child: Text('Exchange Rate'),
                style: TextButton.styleFrom(
                    padding: EdgeInsets.all(18), alignment: Alignment.center),
              ),
            ),
          )
        ],
      ),
    );
  }
}
