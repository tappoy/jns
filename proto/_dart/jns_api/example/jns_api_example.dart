import 'package:jns_api/jns_api.dart';
import 'package:grpc/grpc.dart';

Future<void> main(List<String> args) async {
  final cred = ChannelCredentials.insecure();
  final client = FileClient('127.0.0.1', 8080, 'PUBLIC-TEST', cred);
  final file = await client.getFile('example');
  print('file: $file');
  await client.close();
}
