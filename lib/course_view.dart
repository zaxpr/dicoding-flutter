import 'package:flutter/material.dart';

class CourseView extends StatefulWidget {
  const CourseView({super.key, required this.course});

  final Map<String, dynamic> course;

  

  @override
  State<CourseView> createState() => _CourseViewState();
}

class _CourseViewState extends State<CourseView> {
  @override
  Widget build(BuildContext context) {
    List<Widget> courseDetails = [];

    if (widget.course["course_details"] != null &&
    widget.course["course_details"] is List) {
      int i = 1;
      widget.course["course_details"].forEach((row) {
        courseDetails.add(
          Container(
            margin: EdgeInsets.all(10),
            child: Column(children: [
              Align(
                alignment: Alignment.topLeft,
                child: Text("Langkah " + i.toString() + ": " + row["title"], style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold))
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(row["desc"]))
            ],),
          )
        );
        i++;
      });
      
}
    
    return Scaffold(
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 10),
            child: Center(child: Text(widget.course["course_name"], style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)))),

          Container(
            margin: EdgeInsets.all(5),
            child: Text("Materi Pelatihan:", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),

          Column(
            children: courseDetails,
          ),
        ],
      ),
    );
  }
}