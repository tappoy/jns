import 'package:jns_api/jns_api.dart';

Future<void> main(List<String> args) async {
  final api = ChannelApi('/');
  final (file, err) = await api.getFile('api getFile');
  print('result: $file, $err');
}
