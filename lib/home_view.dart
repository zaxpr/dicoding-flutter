import 'package:flutter/material.dart';
import './course_model.dart';
import './course_view.dart';

// ignore: must_be_immutable
class HomeView extends StatelessWidget {
  CourseModel courseM = new CourseModel();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: courseM.courses().asMap().entries.map((e) {
          return Container(
            margin: EdgeInsets.all(10),
            child: InkWell(
              child: Image(image: AssetImage("assets/" + e.value["course_image"])),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => CourseView(
                    course: e.value,
                  )
                ),);
              },
            ),
          );
        }).toList(),
      ),
    );
  }
}
