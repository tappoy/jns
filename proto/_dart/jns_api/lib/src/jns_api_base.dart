import 'package:grpc/grpc.dart';
import 'gen/file.pbgrpc.dart';

class FileClient {
  late FileServiceClient stub;
  late ClientChannel channel;

  FileClient(String host, int port, String token, ChannelCredentials cred) {
    final opt = ChannelOptions(credentials: cred);
    channel = ClientChannel(host, port: port, options: opt);
    final meta = <String, String>{};
    meta['Jns-Token'] = token;
    stub = FileServiceClient(channel,
        options: CallOptions(metadata: meta, timeout: Duration(seconds: 30)));
  }

  Future<void> close() async {
    await channel.shutdown();
  }

  Future<List<int>> getFile(String path) async {
    try {
      final req = GetFileRequest();
      req.path = path;
      GetFileResponse res = await stub.getFile(req);
      return res.file;
    } catch (e) {
      print('Caught error: $e');
      rethrow;
    }
  }
}
