import 'package:flutter/material.dart';

class CourseView extends StatefulWidget {
  const CourseView({super.key, required this.course});

  final Map<String, dynamic> course;

  @override
  State<CourseView> createState() => _CourseViewState();
}

class _CourseViewState extends State<CourseView> {
  int courseState = 0;
  Color nextColor = Colors.white;
  Color preColor = Colors.grey;

  @override
  void setState(VoidCallback fn) {
    // TODO: implement setState
    super.setState(fn);

    if(courseState > 0) {
      preColor = Colors.white;
    }
    else {
      preColor = Colors.grey;
    }

    if ((courseState + 1) <
                          widget.course["course_details"].length) {
                            nextColor = Colors.white;
                          }
                          else {
                            nextColor = Colors.grey;
                          }
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ListView(
            children: [
              Container(
                  margin: EdgeInsets.only(bottom: 10),
                  child: Center(
                      child: Text(widget.course["course_name"],
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold)))),
              Container(
                  margin: EdgeInsets.all(5),
                  child: Text("Materi Pelatihan:",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
              Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 3,
                  color: Colors.white,
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                                "Langkah " +
                                    (courseState + 1).toString() +
                                    ": " +
                                    widget.course["course_details"][courseState]
                                        ["title"],
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold))),
                        Align(
                            alignment: Alignment.topLeft,
                            child: Text(widget.course["course_details"][courseState]
                                ["desc"]))
                      ],
                    ),
                  )),
            ],
          ),

          Positioned.fill(
            bottom: 20,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 150,
                  child: ElevatedButton(
                    child: Text("< Previous"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: preColor,
                    ),
                    onPressed: () {
                      if (courseState >= 1) {
                        setState(() {
                          courseState--;
                        });
                      }
                      
                    },
                  ),
                ),
                SizedBox(
                  width: 150,
                  child: ElevatedButton(
                    child: Text("Next >"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: nextColor,
                    ),
                    onPressed: () {
                      if ((courseState + 1) <
                          widget.course["course_details"].length) {
                        setState(() {
                          courseState++;
                        });
                      }
                      
                    },
                  ),
                ),
              ],
                      ),
            ),
          ),
        ],
      ),
    );
  }
}
