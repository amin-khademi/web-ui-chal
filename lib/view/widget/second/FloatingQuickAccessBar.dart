import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_ui_chal/core/core.dart';
import 'package:web_ui_chal/view/widget/second/responsive.dart';

class FloatingQuickAccessBar extends StatelessWidget {
  final Size screenSize;
  const FloatingQuickAccessBar({
    Key? key,
    required this.screenSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
        child: Card(
          surfaceTintColor: Colors.transparent,
          color: Colors.white,
          elevation: 5,
          child: Padding(
            padding: EdgeInsets.only(
                top: Dimens.height / 50, bottom: Dimens.height / 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: generateRowElements(screenSize),
            ),
          ),
        ),
      ),
    );
  }
}

List<Widget> generateRowElements(screenSize) {
  RxList isHovering = [false, false, false, false].obs;
  List<Widget> rowElements = [];
  List<String> items = ['History', 'Science', 'Philosophy', 'Novels'];
  // List<IconData> icons = [
  //   Icons.location_on,
  //   Icons.date_range,
  //   Icons.people,
  //   Icons.wb_sunny
  // ];
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
