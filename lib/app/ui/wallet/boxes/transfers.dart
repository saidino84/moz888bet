import 'dart:math';

import 'package:flutter/material.dart';
import 'package:moz888bet/app/ui/wallet/wallet_pallets.dart';

class TransfersUi extends StatelessWidget {
  const TransfersUi({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: WalletPalet.secondary,
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('TRANSFERENCIAS '),
          SizedBox(
            width: double.infinity,
            child: DataTable(
                columnSpacing: 8.8,
                horizontalMargin: 0.0,
                showBottomBorder: true,
                columns: [
                  DataColumn(label: Text('ID')),
                  DataColumn(label: Text('Number')),
                  DataColumn(label: Text('Date')),
                  DataColumn(label: Text('Delivered')),
                  DataColumn(label: Text('TaxRate')),
                  DataColumn(label: Text('Subtotal')),
                  DataColumn(label: Text('Total')),
                  DataColumn(label: Text('Action')),
                  DataColumn(label: Text('user')),
                  DataColumn(label: Text('Description')),
                ],
                rows: List.generate(
                    8,
                    (index) => DataRow(
                            selected: index == 2 ? true : false,
                            onSelectChanged: (e) {
                              print('Selected');
                            },
                            cells: [
                              DataCell(showEditIcon: true, Text('0$index')),
                              DataCell(Text('${Random(4523).nextInt(7502)}')),
                              DataCell(Text(
                                  '${DateTime.now().day + Random(1).nextInt(30)}/${DateTime.now().month + index}/2023')),
                              DataCell(Icon(
                                index.isEven
                                    ? Icons.done
                                    : Icons.currency_exchange_rounded,
                                color: index.isEven
                                    ? Colors.greenAccent
                                    : Colors.redAccent,
                              )),
                              DataCell(Text('17%')),
                              DataCell(Text('25,435.52')),
                              DataCell(Text('28.3645.00')),
                              DataCell(IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.download,
                                    color: Colors.blueAccent,
                                  ))),
                              DataCell(Text('saidino')),
                              DataCell(Text(
                                  'This is owesome description ao d vaca')),
                            ]))),
          )
        ],
      ),
    );
  }
}
