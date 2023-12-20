import 'package:flutter/material.dart';
import 'package:web_ui_chal/view/widget/call-to-action/call.to.action.dart';
import 'package:web_ui_chal/view/widget/center_view/center.view.dart';
import 'package:web_ui_chal/view/widget/course-detail/course.detail.dart';
import 'package:web_ui_chal/view/widget/navigationBar/navigation.bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: CenteredView(
        child: Column(
          children: [
            NavigationBarr(),
            Expanded(
                child: Row(
              children: <Widget>[
                CourseDetail(),
                Expanded(
                  child: Center(
                    child: CallToAction(title: "join course"),
                  ),
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
