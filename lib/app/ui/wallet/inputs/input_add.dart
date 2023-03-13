import 'package:flutter/material.dart';
import 'package:moz888bet/app/shared/constants.dart';

class AddInput extends StatelessWidget {
  const AddInput({Key? key, this.controller, this.title, this.input_width})
      : super(key: key);
  final TextEditingController? controller;
  final String? title;
  final double? input_width;

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.only(top: 10),
      height: 55,
      width: input_width ?? double.infinity,
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.white12,
          ),
          borderRadius: BorderRadius.circular(8)),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: defaultPadding / 2),
            // color: Colors.black12,
            decoration: BoxDecoration(
              border: Border(right: BorderSide(color: Colors.white12)),
            ),
            child: Text(title!),
          ),
          Divider(
            color: Colors.red,
          ),
          Expanded(
              child: TextFormField(
            controller: controller,
            decoration: InputDecoration(
              focusColor: Colors.transparent,
              hintText: 'Your amount',
              contentPadding: EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 20.0,
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
                // borderRadius: BorderRadius.circular(32.0),
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
              ),
            ),
          )),
        ],
      ),
    );
  }
}
