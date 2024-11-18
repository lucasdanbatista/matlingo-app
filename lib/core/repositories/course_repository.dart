import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

import '../entities/course.dart';
import '../entities/student.dart';

abstract interface class CourseRepository {
  Future<List<Course>> findCourses();

  Future<void> updateStudentCourse(Course course);
}

@LazySingleton(as: CourseRepository)
class FirebaseCourseRepository implements CourseRepository {
  @override
  Future<List<Course>> findCourses() async {
    final student = await _getStudent();
    return student.courses;
  }

  Future<Student> _getStudent() async =>
      await _findStudent() ?? await _createStudent();

  @override
  Future<void> updateStudentCourse(Course course) async {
    final doc = '/students/${FirebaseAuth.instance.currentUser!.uid}';
    final student = await _getStudent();
    student.courses.remove(course);
    student.courses.add(course);
    await FirebaseFirestore.instance.doc(doc).set(student.toJson());
  }

  Future<List<Course>> _findCourses() async {
    const collection = '/courses';
    final query = await FirebaseFirestore.instance.collection(collection).get();
    return query.docs.map((e) => Course.fromJson(e.data())).toList();
  }

  Future<Student?> _findStudent() async {
    final doc = '/students/${FirebaseAuth.instance.currentUser!.uid}';
    final query = await FirebaseFirestore.instance.doc(doc).get();
    if (query.data() == null) return null;
    return Student.fromJson(query.data()!);
  }

  Future<Student> _createStudent() async {
    final id = FirebaseAuth.instance.currentUser!.uid;
    final student = Student(id: id, courses: List.of([]));
    final courses = await _findCourses();
    student.courses.addAll(courses);
    final doc = '/students/$id';
    await FirebaseFirestore.instance.doc(doc).set(student.toJson());
    return student;
  }
}
