import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shiv_fit/app/data/enums/firebase/firebase_error_codes.dart';
import 'package:shiv_fit/app/data/values/error_messages.dart';
import 'package:shiv_fit/utils/helper/api_exception.dart';
import 'package:shiv_fit/utils/helper/firebase_exception_mapper.dart';

class ExceptionHandler {
  ExceptionHandler._privateConstructor();

  static APIException handle(Object error) {
    if (error is FirebaseException) {
      return _handleFirebaseError(error);
    } else if (error is FormatException) {
      return APIException(message: ErrorMessages.invalidFormat);
    } else if (error is TypeError) {
      return APIException(message: ErrorMessages.typeMismatch);
    } else {
      return APIException(message: ErrorMessages.networkGeneral); // fallback
    }
  }

  static APIException _handleFirebaseError(Exception error) {
    if (error is FirebaseException) {
      final code =
          FirebaseExceptionMapper.firebaseErrorCodeFromString(error.code);
      switch (code) {
        case FirebaseErrorCode.unavailable:
          return APIException(message: ErrorMessages.noInternet);
        case FirebaseErrorCode.deadlineExceeded:
          return APIException(message: ErrorMessages.connectionTimeout);
        case FirebaseErrorCode.permissionDenied:
          return APIException(message: ErrorMessages.permissionDenied);
        case FirebaseErrorCode.notFound:
          return APIException(message: ErrorMessages.notFound);
        default:
          return APIException(message: ErrorMessages.networkGeneral);
      }
    } else {
      return APIException(message: ErrorMessages.networkGeneral);
    }
  }
}
