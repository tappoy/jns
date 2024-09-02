import 'err.dart';
import 'host_info.dart';
import 'file_client.dart';

/// Core API.
class CoreApi {}

/// Channel API
class ChannelApi {
  /// gRPC call: getFile.
  Future<(List<int>?, Err)> getFile(String msName, String path) async {
    final h = HostInfo('xx', '127.0.0.1', 8080);
    final client = FileClient(h);
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
