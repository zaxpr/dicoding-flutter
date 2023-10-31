class CourseModel {
  List<Map<String, dynamic>> courses() {
    return [
      {
        "course_id": 1,
        "course_name": "Android Developer",
        "course_image": "android_dev.png"
      },
      {
        "course_id": 2,
        "course_name": "Front-end Developer",
        "course_image": "frontend_dev.png"
      },
      {
        "course_id": 3,
        "course_name": "Machine Learning Developer",
        "course_image": "ml_dev.png"
      },
      {
        "course_id": 4,
        "course_name": "Back-end Developer",
        "course_image": "backend_dev.png"
      },
    ];
  }
}