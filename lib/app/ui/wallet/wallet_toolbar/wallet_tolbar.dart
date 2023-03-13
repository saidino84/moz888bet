import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:moz888bet/app/controllers/AppController.dart';
import 'package:moz888bet/app/data/models/meses.dart';
import 'package:moz888bet/app/shared/constants.dart';
import 'package:moz888bet/app/ui/wallet/components.dart';
import 'package:moz888bet/app/ui/wallet/wallet_pallets.dart';

import 'components/month_dropdown.dart';
import 'components/search_input.dart';

class WalletAppBar extends GetView<AppController> {
  const WalletAppBar(
    this.size, {
    Key? key,
  }) : super(key: key);
  final Size size;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: WalletPalet.darkcolor),
      padding: EdgeInsets.symmetric(horizontal: defaultPadding),
      // constraints: BoxConstraints(maxHeight: size.height * 0.1, minHeight: 60),
      // constraints: BoxConstraints(maxHeight: size.height * 0.1, minHeight: 60),
      height: 60,

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(children: [
            Text(
              'REGISTOS',
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(color: Colors.white),
            ),
            SizedBox(width: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: EdgeInsets.all(5),
                constraints: BoxConstraints(maxWidth: 200),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white10),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Obx(() {
                  return DropdownButton<Month>(
                    elevation: 0,
                    underline: Container(),
                    borderRadius: BorderRadius.circular(20),
                    value: controller.curentMountId,
                    icon: Icon(Icons.keyboard_arrow_down),
                    dropdownColor: WalletPalet.darkcolor,
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall!
                        .copyWith(color: WalletPalet.bodyTextcolor),
                    items: controller.meses.map<DropdownMenuItem<Month>>(
                      (Month value) {
                        return DropdownMenuItem<Month>(
                            value: value, child: Text('${value.name}'));
                      },
                    ).toList(),
                    onChanged: (Month? value) {
                      controller.changeMonth(value!);
                    },
                  );
                }),
              ),
            ),
          ]),
          // Spacer(),
          Expanded(
            child: Container(
              // constraints: BoxConstraints(maxWidth: 200, minWidth: 100),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: defaultPadding,
                  ),
                  Expanded(
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          if (!ResponsiveLayout.isMobile(context))
                            SearchInput(),
                          Icon(Icons.notifications),
                          SizedBox(
                            width: defaultPadding / 2,
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.blueAccent,
                            child: Image.asset('assets/aviator_jogo.png'),
                          ),
                          SizedBox(
                            width: defaultPadding,
                          ),
                          if (!ResponsiveLayout.isMobile(context) &&
                              !ResponsiveLayout.islargeMobile(context))
                            MonthDropDownMenu(controller: controller)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // if (!ResponsiveLayout.isMobile(context))
          //   SizedBox(
          //     width: defaultPadding,
          //   ),
        ],
      ),
    );
  }
}
