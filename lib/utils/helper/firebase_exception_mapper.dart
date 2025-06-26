import 'package:shiv_fit/app/data/enums/firebase/firebase_error_codes.dart';

class FirebaseExceptionMapper {
  static FirebaseErrorCode firebaseErrorCodeFromString(String code) {
    switch (code) {
      case 'cancelled':
        return FirebaseErrorCode.cancelled;
      case 'unknown':
        return FirebaseErrorCode.unknown;
      case 'invalid-argument':
        return FirebaseErrorCode.invalidArgument;
      case 'deadline-exceeded':
        return FirebaseErrorCode.deadlineExceeded;
      case 'not-found':
        return FirebaseErrorCode.notFound;
      case 'already-exists':
        return FirebaseErrorCode.alreadyExists;
      case 'permission-denied':
        return FirebaseErrorCode.permissionDenied;
      case 'resource-exhausted':
        return FirebaseErrorCode.resourceExhausted;
      case 'failed-precondition':
        return FirebaseErrorCode.failedPrecondition;
      case 'aborted':
        return FirebaseErrorCode.aborted;
      case 'out-of-range':
        return FirebaseErrorCode.outOfRange;
      case 'unimplemented':
        return FirebaseErrorCode.unimplemented;
      case 'internal':
        return FirebaseErrorCode.internal;
      case 'unavailable':
        return FirebaseErrorCode.unavailable;
      case 'data-loss':
        return FirebaseErrorCode.dataLoss;
      case 'unauthenticated':
        return FirebaseErrorCode.unauthenticated;

      // Firebase Auth-specific codes
      case 'email-already-in-use':
        return FirebaseErrorCode.emailAlreadyInUse;
      case 'user-disabled':
        return FirebaseErrorCode.userDisabled;
      case 'user-not-found':
        return FirebaseErrorCode.userNotFound;
      case 'wrong-password':
        return FirebaseErrorCode.wrongPassword;
      case 'too-many-requests':
        return FirebaseErrorCode.tooManyRequests;
      case 'operation-not-allowed':
        return FirebaseErrorCode.operationNotAllowed;
      case 'invalid-email':
        return FirebaseErrorCode.invalidEmail;
      case 'weak-password':
        return FirebaseErrorCode.weakPassword;

      default:
        return FirebaseErrorCode.unknownError;
    }
  }
}
