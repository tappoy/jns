import 'err.dart';
import 'host_info.dart';
import 'file_client.dart';
import 'env.dart';

/// Core API.
class CoreApi {}

/// Channel API
class ChannelApi {
  /// Channel name;
  final String name;

  /// File Server
  late final HostInfo fileServer;

  /// Profile Server
  late final HostInfo profileServer;

  /// Tweet Server
  late final HostInfo tweetServer;

  /// Like Server
  late final HostInfo likeServer;

  /// Mute Server
  late final HostInfo muteServer;

  /// Note Server
  late final HostInfo noteServer;

  /// Constructor.
  /// throws:
  ///   - HostNotFoundException.
  ChannelApi(this.name) {
    Env.load();
    HostInfo.load();
    fileServer = HostInfo.get('$name:file');
    profileServer = HostInfo.get('$name:profile');
    tweetServer = HostInfo.get('$name:tweet');
    likeServer = HostInfo.get('$name:like');
    muteServer = HostInfo.get('$name:mute');
    noteServer = HostInfo.get('$name:note');
  }

  /// gRPC call: getFile.
  Future<(List<int>?, Err)> getFile(String path) async {
    final client = FileClient(fileServer);
    try {
      final (file, err) = await client.getFile('example');
      if (err != Err.ok) {
        print('err file: $err: $file');
        return (null, err);
      } else {
        return (file, err);
      }
    } finally {
      await client.close();
    }
  }
}
