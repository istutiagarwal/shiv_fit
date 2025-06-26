import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shiv_fit/app/base/data_wrapper.dart';
import 'package:shiv_fit/app/data/values/error_messages.dart';
import 'package:shiv_fit/utils/helper/firebase_exception_handler.dart';

class FirebaseService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<DataWrapper<void>> upload<T>({
    required String collectionPath,
    required Map<String, dynamic> data,
  }) async {
    try {
      await _firestore.collection(collectionPath).add(data);

      return DataWrapper<void>(data: null);
    } catch (e) {
      final exception = ExceptionHandler.handle(e);
      return DataWrapper<void>(error: exception.message);
    }
  }

  Future<DataWrapper<void>> update<T>({
    required String collectionPath,
    required Map<String, dynamic> data,
    required String docId,
  }) async {
    try {
      await _firestore.collection(collectionPath).doc(docId).update(data);

      return DataWrapper<void>(data: null);
    } catch (e) {
      final exception = ExceptionHandler.handle(e);
      return DataWrapper<void>(error: exception.message);
    }
  }

  Future<DataWrapper<void>> set<T>({
    required String collectionPath,
    required Map<String, dynamic> data,
    required String docId,
    bool merge = false,
  }) async {
    print("inside set firebase service");
    try {
      print("inside try");
      await _firestore.collection(collectionPath).doc(docId).set(data);
      print("${ _firestore.collection(collectionPath).doc(docId).set(data)}");
      return DataWrapper<void>(data: null);
    } catch (e) {
      print("inside catch $e");
      final exception = ExceptionHandler.handle(e);
      return DataWrapper<void>(error: exception.message);
    }
  }
  Future<DataWrapper<Map<String, dynamic>>> fetch({
    required String collectionPath,
    required String docId,
  }) async {
    try {
      print("inside firebase service try");
      final docSnapshot = await _firestore
          .collection(collectionPath)
          .doc(docId)
          .get();

      if (docSnapshot.exists && docSnapshot.data() != null) {
        print("docSnap exists ${DataWrapper<Map<String, dynamic>>(data: docSnapshot.data()!)}");
        print("Document data: ${docSnapshot.data()}");
        return DataWrapper<Map<String, dynamic>>(data: docSnapshot.data()!);
      } else {
        print("error");
        return DataWrapper<Map<String, dynamic>>(
          error: ErrorMessages.documentNotFound,
        );
      }
    } catch (e) {
      print("catch");
      final exception = ExceptionHandler.handle(e);
      return DataWrapper<Map<String, dynamic>>(error: exception.message);
    }
  }
}
