import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shiv_fit/app/data/models/dto/data_wrapper.dart';
import 'package:shiv_fit/utils/helper/firebase_exception_handler.dart';

class FirebaseService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<DataWrapper<void>> upload<T>({
    required String collectionPath,
    required Map<String, dynamic> data,
  }) async {
    try {
      await _firestore.collection(collectionPath).add(data);

      return DataWrapper<void>(data: null); // ✅ Success, no actual data needed
    } catch (e) {
      final exception = ExceptionHandler.handle(e);
      return DataWrapper<void>(error: exception.message);
    }
  }
}
