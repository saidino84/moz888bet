import 'package:flutter/material.dart';
import 'package:moz888bet/app/shared/constants.dart';
import 'package:moz888bet/app/ui/wallet/components.dart';
import 'package:moz888bet/app/ui/wallet/wallet_pallets.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ResponsiveLayout.islargeMobile(context) ? 120 : 200,
      margin: EdgeInsets.only(right: defaultPadding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(defaultBorderRadius),
        color: WalletPalet.secondary.withOpacity(0.5),
        // border: Border.all(color: Colors.amberAccent),
      ),
      child: TextFormField(
        // controller: controller,

        cursorColor: Colors.amber,
        decoration: InputDecoration(
          // suffixIconConstraints: BoxConstraints(maxHeight: 100),
          suffixIcon: Icon(Icons.search),
          focusColor: Colors.transparent,
          hintText: 'Search...',
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
      ),
    );
  }
}
