import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_ui_chal/view/widget/second/responsive.dart';

class FloatingQuickAccessBar extends StatelessWidget {
  List<String> items = ['History', 'Science', 'Philosophy', 'Novels'];
  RxList isHovering = [false, false, false, false].obs;
  List<IconData> icons = [
    Icons.location_on,
    Icons.date_range,
    Icons.people,
    Icons.wb_sunny
  ];
  final Size screenSize;
  FloatingQuickAccessBar({
    Key? key,
    required this.screenSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize=MediaQuery.of(context).size;
    return Center(
      heightFactor: 1,
      child: Padding(
        padding: EdgeInsets.only(
          top: screenSize.height * 0.60,
          left: ResponsiveWidget.isSmallScreen(context)
              ? screenSize.width / 12
              : screenSize.width / 5,
          right: ResponsiveWidget.isSmallScreen(context)
              ? screenSize.width / 12
              : screenSize.width / 5,
        ),
        child: screenSize.width < 800
            ? Column(
                children: [
                  for (int i = 0; i < items.length; i++)
                    Padding(
                      padding: EdgeInsets.only(bottom: screenSize.height / 40),
                      child: Card(
                        elevation: 4,
                        child: Padding(
                          padding: EdgeInsets.only(
                            top: screenSize.height / 45,
                            bottom: screenSize.height / 45,
                            left: screenSize.height / 40,
                          ),
                          child: Row(
                            children: [
                              Icon(icons[i],
                              color: Colors.blueGrey,),
                              SizedBox(
                                width: screenSize.width / 50,
                              ),
                              InkWell(
                                splashColor: Colors.purple.shade200,
                                hoverColor: Colors.transparent,
                                onHover: (value) {
                                  value
                                      ? isHovering[i] = true
                                      : isHovering[i] = false;
                                },
                                onTap: () {},
                                child: Text(
                                  items[i],
                                  style: TextStyle(
                                    color: isHovering[i]
                                        ? Colors.blueGrey[900]
                                        : Colors.blueGrey,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                ],
              )
            : Card(
                surfaceTintColor: Colors.transparent,
                color: Colors.white,
                elevation: 5,
                child: Padding(
                  padding: EdgeInsets.only(
                      top: screenSize.height / 50, bottom: screenSize.height/ 50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children:
                        generateRowElements(screenSize, items, isHovering),
                  ),
                ),
              ),
      ),
    );
  }
}

List<Widget> generateRowElements(screenSize, items, isHovering) {
  List<Widget> rowElements = [];

  rowElements.clear();
  for (int i = 0; i < items.length; i++) {
    rowElements.add(elementTitle(isHovering, i, items));
    if (i < items.length - 1) {
      rowElements.add(spacer(screenSize));
    }
  }

  return rowElements;
}

Widget spacer(screenSize) => SizedBox(
      height: screenSize.height / 20,
      child: VerticalDivider(
        width: 1,
        color: Colors.blueGrey[100],
        thickness: 1,
      ),
    );

Widget elementTitle(RxList<dynamic> isHovering, int i, List<String> items) {
  return InkWell(
    splashColor: Colors.purple.shade200,
    hoverColor: Colors.transparent,
    onHover: (value) {
      value ? isHovering[i] = true : isHovering[i] = false;
    },
    onTap: () {},
    child: Text(
      items[i],
      style: TextStyle(
        color: isHovering[i] ? Colors.blueGrey[900] : Colors.blueGrey,
      ),
    ),
  );
}
