import 'package:aryam_project1/model/course_model.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class Database {
  final supabase = Supabase.instance.client;

  Future<List<CourseModel>> getAllCourses() async {
    final data = await supabase.from("places").select();

    List<CourseModel> allCources = [];

    for (var element in data) {
      CourseModel course = CourseModel.fromJson(element);
      allCources.add(course);
    }
    return allCources;
  }
}
