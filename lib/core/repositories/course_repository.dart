import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

import '../entities/unit.dart';

abstract interface class CourseRepository {
  Future<List<Unit>> findUnits();
}

@LazySingleton(as: CourseRepository)
class FirebaseCourseRepository implements CourseRepository {
  @override
  Future<List<Unit>> findUnits() async {
    final query = await FirebaseFirestore.instance.collection('/units').get();
    return query.docs.map((doc) => Unit.fromJson(doc.data())).toList();
  }
}
