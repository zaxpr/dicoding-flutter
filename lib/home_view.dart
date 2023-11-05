import 'package:flutter/material.dart';
import './course_model.dart';
import './course_view.dart';
import 'package:simple_grid/simple_grid.dart';

// ignore: must_be_immutable
class HomeView extends StatelessWidget {
  CourseModel courseM = new CourseModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('IDCamp 2023'), 
        titleTextStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        centerTitle: true,
        backgroundColor: Colors.blue,
        elevation: 5,
      ),
      body: ListView(
        children: [
          SpGrid(
            width: MediaQuery.of(context).size.width,
            children: courseM.courses().asMap().entries.map((e) {
              return SpGridItem(
                  xs: 12,
                  sm: 6,
                  md: 4,
                  lg: 3,
                  child: Card(
                    shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                    elevation: 1,
                    color: Colors.white,
                    child: Container(
                    margin: EdgeInsets.all(10),
                    child: InkWell(
                      child: Image(
                          image: AssetImage("assets/" + e.value["course_image"])),
                      onTap: () async {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CourseView(
                                    course: e.value,
                                  )),
                        );
                      },
                    ),
                  )
                  ));
            }).toList(),
          ),
        ],
      ),
    );
  }

  int _getCurrentViewPort(BuildContext context) {
    final size = MediaQuery.of(context).size;

    if (size.width < 600) {
      return 1;
    } else if (size.width < 1000) {
      return 2;
    } else {
      return 4;
    }
  }
}
