import 'package:grpc/grpc.dart';

/// Error codes.
enum Err {
  /// OK.
  ok,

  /// NG.
  ng,

  /// GrpcError.
  grpc,

  /// GrpcError. codeName: DEADLINE_EXCEEDED.
  grpcDeadlineExeeded,

  /// GrpcError. codeName: UNAUTHENTICATED.
  grpcUnauthenticated,

  /// GrpcError. codeName: UNAVAILABLE.
  grpcUnavailable,
}

/// https://pub.dev/documentation/grpc/latest/grpc/GrpcError-class.html
class GrpcErrorHandler {
  /// Convert GrpcError to Err.
  static Err toErr(GrpcError e) {
    switch (e.codeName) {
      case 'UNAUTHENTICATED':
        return Err.grpcUnauthenticated;
      case 'DEADLINE_EXCEEDED':
        return Err.grpcDeadlineExeeded;
      case 'UNAVAILABLE':
        return Err.grpcUnavailable;
      default:
        return Err.grpc;
    }
  }
}
