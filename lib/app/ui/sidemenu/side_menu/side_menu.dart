import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:moz888bet/app/shared/constants.dart';

import 'components/area_info_text.dart';
import 'components/coding.dart';
import 'components/knowleges.dart';
import 'components/profile_info.dart';
import 'components/skills.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          ProfileInfo(),
          Expanded(
              child: SingleChildScrollView(
            primary: false,
            padding: EdgeInsets.all(defaultPadding),
            child: Column(
              children: [
                AreaInfoText(
                  title: 'Resindence',
                  text: 'Mozambique',
                ),
                AreaInfoText(title: 'City', text: "Pemba"),
                AreaInfoText(
                  title: 'Age',
                  text: '25',
                ),
                Skills(),
                SizedBox(
                  height: 20.0,
                ),
                Coding(),
                KnowLedges(),
                Column(
                  children: [
                    Divider(),
                    TextButton(
                      onPressed: () {},
                      child: FittedBox(
                        child: Row(
                          children: [
                            Text(
                              'DOWNLOAD CV',
                              style: TextStyle(
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .color),
                            ),
                            SizedBox(
                              width: defaultPadding / 2,
                            ),
                            SvgPicture.asset('assets/icons/download.svg'),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: defaultPadding),
                      color: Color(0xFF24242E),
                      child: Row(
                        children: [
                          Spacer(),
                          FittedBox(
                            child: IconButton(
                              splashRadius: 10,
                              splashColor: Colors.amberAccent,
                              onPressed: () {},
                              icon:
                                  SvgPicture.asset('assets/icons/linkedin.svg'),
                            ),
                          ),
                          FittedBox(
                            child: IconButton(
                              splashRadius: 6,
                              onPressed: () {
                                print('hi3');
                              },
                              icon: SvgPicture.asset('assets/icons/github.svg'),
                            ),
                          ),
                          IconButton(
                            splashRadius: 2,
                            onPressed: () {
                              print('he2');
                            },
                            icon: SvgPicture.asset('assets/icons/twitter.svg'),
                          ),
                          Spacer(),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
