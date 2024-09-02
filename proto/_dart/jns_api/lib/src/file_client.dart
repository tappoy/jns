import 'package:grpc/grpc.dart';

import 'gen/file.pbgrpc.dart';
import 'err.dart';
import 'host_info.dart';

/// gRPC client for file service.
class FileClient {
  /// Generated gRPC stub.
  late FileServiceClient stub;

  /// Channel for stub.
  late ClientChannel channel;

  /// Constructor.
  FileClient(HostInfo h) {
    final opt = ChannelOptions(credentials: h.getCredential());
    channel = ClientChannel(h.host, port: h.port, options: opt);
    final meta = <String, String>{};
    meta['Jns-Token'] = h.getJnsToken();
    stub = FileServiceClient(channel,
        options: CallOptions(metadata: meta, timeout: Duration(seconds: 3)));
  }

  /// Close channel.
  Future<void> close() async {
    await channel.shutdown();
  }

  /// gRPC call: getFile.
  Future<(List<int>?, Err)> getFile(String path) async {
    try {
      final req = GetFileRequest();
      req.path = path;
      GetFileResponse res = await stub.getFile(req);
      return (res.file, Err.ok);
    } on GrpcError catch (e) {
      print('GrpcError: $e');
      return (null, GrpcErrorHandler.toErr(e));
    } catch (e) {
      print('Unknown Error: $e');
      print(e.runtimeType);
      return (null, Err.ng);
    }
  }
}
