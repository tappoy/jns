import 'err.dart';

/// Host not found.
class HostNotFoundException implements Exception {
  /// Host name not found.
  final String hostName;

  /// Constructor.
  HostNotFoundException(this.hostName);

  /// Show message.
  @override
  String toString() {
    return 'Host not found. [$hostName]';
  }

  /// to Err
  Err toErr() {
    return Err.hostNotFound;
  }
}
