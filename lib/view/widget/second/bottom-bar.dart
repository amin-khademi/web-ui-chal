import 'package:flutter/material.dart';
import 'package:web_ui_chal/view/widget/second/bottom-bar-column.dart';
import 'package:web_ui_chal/view/widget/second/info-text.dart';
import 'package:web_ui_chal/view/widget/second/responsive.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({
    Key? key,
  }) : super(key: key);
  static const Color gradientStartColor = Color(0xff11998e);
  static const Color gradientEndColor = Color(0xff0575E6);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(0.0)),
        gradient: LinearGradient(
            colors: [gradientStartColor, gradientEndColor],
            begin: FractionalOffset(0.2, 0.2),
            end: FractionalOffset(1.0, 1.0),
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp),
      ),
      padding: const EdgeInsets.all(30),
      //color: Colors.blueGrey[900],
      child: ResponsiveWidget.isSmallScreen(context)
          ? const Column(children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  BottomBarColumn(
                    heading: 'ABOUT',
                    s1: 'Contact Us',
                    s2: 'About Us',
                    s3: 'Careers',
                  ),
                  BottomBarColumn(
                    heading: 'HELP',
                    s1: 'Payment',
                    s2: 'Cancellation',
                    s3: 'FAQ',
                  ),
                  BottomBarColumn(
                    heading: 'SOCIAL',
                    s1: 'Twitter',
                    s2: 'Facebook',
                    s3: 'YouTube',
                  ),
                ],
              ),
              Divider(
                color: Colors.white,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InfoText(
                    type: 'Email',
                    text: 'dylan@gmail.com',
                  ),
                  SizedBox(height: 5),
                  InfoText(
                    type: 'Address',
                    text: '128, Trymore Road, Delft, MN - 56124',
                  )
                ],
              ),
              Divider(
                color: Colors.white,
              ),
              SizedBox(height: 20),
              Text(
                'Copyright © 2021 | DBestech',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
            ])
          : Column(
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const BottomBarColumn(
                      heading: 'ABOUT',
                      s1: 'Contact Us',
                      s2: 'About Us',
                      s3: 'Careers',
                    ),
                    const BottomBarColumn(
                      heading: 'HELP',
                      s1: 'Payment',
                      s2: 'Cancellation',
                      s3: 'FAQ',
                    ),
                    const BottomBarColumn(
                      heading: 'SOCIAL',
                      s1: 'Twitter',
                      s2: 'Facebook',
                      s3: 'YouTube',
                    ),
                    Container(
                      color: Colors.white,
                      width: 2,
                      height: 150,
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InfoText(
                          type: 'Email',
                          text: 'dylan@gmail.com',
                        ),
                        SizedBox(height: 5),
                        InfoText(
                          type: 'Address',
                          text: '128, Trymore Road, Delft, MN - 56124',
                        )
                      ],
                    ),
                  ],
                ),
                const Divider(
                  color: Colors.white,
                ),
                const SizedBox(height: 20),
                const Text(
                  'Copyright © 2021 | DBestech',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
    );
  }
}
