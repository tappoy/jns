/// Error codes.
///
/// Basically, do not throw exceptions from methods.
/// Return an error code.
/// However, it is allowed to throw an exception from the constructor.
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

  /// Host not found.
  hostNotFound,

  /// Env var not found.
  envVarNotFound,
}
