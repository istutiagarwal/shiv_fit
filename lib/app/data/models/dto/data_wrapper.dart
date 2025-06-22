class DataWrapper<T> {
  T? data;
  String? error;

  DataWrapper({this.data, this.error});


}
extension DataWrapperX<T> on DataWrapper<T> {
  bool get isSuccess => error == null && data != null;
  bool get isFailure => error != null;
}

