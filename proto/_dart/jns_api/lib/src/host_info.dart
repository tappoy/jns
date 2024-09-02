import 'package:grpc/grpc.dart';

/// HostInfo is value object of the connection information to the microservice.
class HostInfo {
  /// Microservice's name.
  final String msName;

  /// IP or hostname.
  final String host;

  /// Port number.
  final int port;

  /// Constructor.
  HostInfo(this.msName, this.host, this.port);

  /// Return credential.
  ChannelCredentials getCredential() {
    // TODO: Support secure ver.
    return ChannelCredentials.insecure();
  }

  /// Return Jns-Token.
  String getJnsToken() {
    // TODO: Get from env.
    return 'PUBLIC-TEST';
  }
}
