import 'package:grpc/grpc.dart';
import 'host_not_found_exception.dart';

/// HostInfo is value object of the connection information to the microservice.
class HostInfo {
  /// Host dictionary.
  static final Map<String, HostInfo> dic = {};

  /// Get host info from dictionary.
  static HostInfo get(String name) {
    final ret = dic[name];
    if (ret == null) {
      throw HostNotFoundException(name);
    }
    return ret;
  }

  /// Load hosts from enviromnent.
  static load() {
    dic['-:user'] = HostInfo('-:user', '127.0.0.1', 8080);
    dic['-:session'] = HostInfo('-:session', '127.0.0.1', 8080);
    dic['-:email'] = HostInfo('-:email', '127.0.0.1', 8080);

    dic['/:file'] = HostInfo('/:file', '127.0.0.1', 8080);
    dic['/:profile'] = HostInfo('/:profile', '127.0.0.1', 8080);
    dic['/:tweet'] = HostInfo('/:tweet', '127.0.0.1', 8080);
    dic['/:like'] = HostInfo('/:like', '127.0.0.1', 8080);
    dic['/:mute'] = HostInfo('/:mute', '127.0.0.1', 8080);
    dic['/:note'] = HostInfo('/:note', '127.0.0.1', 8080);
  }

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
}
