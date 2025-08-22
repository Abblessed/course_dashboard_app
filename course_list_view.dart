import 'package:flutter/material.dart';

class Course {
  final String name;
  final String instructor;
  final IconData icon;

  Course({required this.name, required this.instructor, required this.icon});
}

class CourseListView extends StatelessWidget {
  const CourseListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Course> courses = [
      Course(name: 'Introduction to Flutter', instructor: 'John Doe', icon: Icons.flutter_dash),
      Course(name: 'Advanced Dart Programming', instructor: 'Jane Smith', icon: Icons.code),
      Course(name: 'Mobile App Design', instructor: 'Peter Jones', icon: Icons.design_services),
      Course(name: 'Data Structures and Algorithms', instructor: 'Alice Brown', icon: Icons.insert_chart),
      Course(name: 'Web Development with React', instructor: 'David Wilson', icon: Icons.web),
    ];

    return ListView.builder(
      itemCount: courses.length,
      itemBuilder: (context, index) {
        final course = courses[index];
        return Card( //Use Card to make it more presentable
          margin: const EdgeInsets.all(8.0),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Icon(course.icon, size: 40.0),
                const SizedBox(width: 16.0),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        course.name,
                        style: const TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                      Text('Instructor: ${course.instructor}'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
