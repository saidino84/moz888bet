import 'package:flutter/material.dart';
import 'package:moz888bet/app/shared/constants.dart';
import 'package:moz888bet/app/ui/wallet/wallet_pallets.dart';

import 'exchange/transfers/datatable.dart';
import 'transferform.dart';

class TransfersUi extends StatelessWidget {
  const TransfersUi({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(
        right: defaultPadding,
      ),
      decoration: BoxDecoration(
          color: WalletPalet.secondary,
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  padding: EdgeInsets.all(defaultPadding / 2),
                  color: WalletPalet.darkcolor,
                  child: Text('TRANSFERENCIAS ')),
            ],
          ),
          SizedBox(
            height: defaultPadding,
          ),
          TranferForm(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Text('TRANSFERENCIAS '),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: WalletPalet.darkcolor,
                ),
                onPressed: () {},
                label: Text('SALVAR'),
                icon: Icon(Icons.add),
              )
            ],
          ),
          Divider(
            color: WalletPalet.primaryColor,
          ),
          TransferDataTable()
        ],
      ),
    );
  }
}
