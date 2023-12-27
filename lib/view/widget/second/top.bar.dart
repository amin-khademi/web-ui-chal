import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TopBarContents extends StatefulWidget {
  final double opacity;

  const TopBarContents(this.opacity, {super.key});

  @override
  _TopBarContentsState createState() => _TopBarContentsState();
}

class _TopBarContentsState extends State<TopBarContents> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return PreferredSize(
      preferredSize: Size(screenSize.width, 70),
      child: Container(
        color: Colors.white.withOpacity(widget.opacity),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: screenSize.width / 4,
                    ),
                    const Text(
                      'Author',
                      style: TextStyle(
                        color: Color(0xFF077bd7),
                        fontSize: 26,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w900,
                        letterSpacing: 3,
                      ),
                    ),
                    _spaceBetween(screenSize),
                    _TopBarItem(index: 0, title: "Home"),
                    _spaceBetween(screenSize),
                    _TopBarItem(
                      index: 1,
                      title: "About",
                    ),
                    _spaceBetween(screenSize),
                    _TopBarItem(
                      index: 1,
                      title: "History",
                    ),
                    _spaceBetween(screenSize),
                    _TopBarItem(
                      index: 1,
                      title: "Contact",
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _spaceBetween(Size screenSize) => SizedBox(width: screenSize.width / 15);

class _TopBarItem extends StatelessWidget {
  final String title;
  final int index;
  _TopBarItem({required this.title, required this.index});

  final RxList _isHovering =
      [false, false, false, false, false, false, false, false].obs;
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => InkWell(
        onHover: (value) {
          value ? _isHovering[index] = true : _isHovering[index] = false;
        },
        onTap: () {},
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              style: const TextStyle(
                  color: Color(0xFF077bd7),
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
            const SizedBox(height: 5),
            Visibility(
              maintainAnimation: true,
              maintainState: true,
              maintainSize: true,
              visible: _isHovering[index],
              child: Container(
                height: 2,
                width: 20,
                color: const Color(0xFF051441),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
