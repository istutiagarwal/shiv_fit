import 'package:shiv_fit/utils/helper/api_exception.dart';

class RepoResponse<T> {
  final APIException? error;
  final T? data;

  RepoResponse({this.error, this.data});

  bool get isSuccess => error == null;
  bool get hasError => error != null;
  String? get errorMessage => error?.message;
}
