import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:moz888bet/app/shared/constants.dart';
import 'package:moz888bet/app/ui/wallet/inputs/input_add.dart';
import 'package:moz888bet/app/ui/wallet/wallet_pallets.dart';

class TranferForm extends StatelessWidget {
  const TranferForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      // color: Colors.black54,
      padding: EdgeInsets.all(defaultPadding / 2),
      child: Row(
        children: [
          Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  AddInput(
                    title: 'Numero',
                    input_width: 200,
                  ),
                  SizedBox(
                    width: defaultPadding,
                  ),
                  AddInput(
                    title: 'Destino',
                    input_width: 350,
                  ),
                  SizedBox(
                    width: defaultPadding,
                  ),
                  AddInput(
                    title: 'Data',
                    input_width: 200,
                  ),
                ],
              ),
              SizedBox(
                height: defaultPadding,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AddInput(
                    title: 'Subtotal',
                    input_width: 200,
                  ),
                  SizedBox(
                    width: defaultPadding,
                  ),
                  AddInput(
                    title: 'Iva',
                    input_width: 100,
                  ),
                  SizedBox(
                    width: defaultPadding,
                  ),
                  AddInput(
                    title: 'Tranporte',
                    input_width: 180,
                  ),
                  SizedBox(
                    width: defaultPadding,
                  ),
                  AddInput(
                    title: 'Total',
                    input_width: 200,
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            width: defaultPadding,
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: WalletPalet.darkcolor),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text('Descreva'),
                    padding: EdgeInsets.all(defaultPadding / 2),
                    color: WalletPalet.darkcolor,
                  ),
                  Expanded(
                      child: TextField(
                    maxLines: 10,
                    decoration: InputDecoration(
                        hintText: 'descricao...',
                        hintStyle:
                            TextStyle(color: Colors.grey.withOpacity(0.2)),
                        border:
                            OutlineInputBorder(borderSide: BorderSide.none)),
                  ))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
