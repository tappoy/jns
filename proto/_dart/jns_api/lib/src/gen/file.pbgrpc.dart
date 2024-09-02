//
//  Generated code. Do not modify.
//  source: file.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'file.pb.dart' as $0;

export 'file.pb.dart';

@$pb.GrpcServiceName('file.v1.FileService')
class FileServiceClient extends $grpc.Client {
  static final _$getFile =
      $grpc.ClientMethod<$0.GetFileRequest, $0.GetFileResponse>(
          '/file.v1.FileService/GetFile',
          ($0.GetFileRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.GetFileResponse.fromBuffer(value));
  static final _$getDir =
      $grpc.ClientMethod<$0.GetDirRequest, $0.GetDirResponse>(
          '/file.v1.FileService/GetDir',
          ($0.GetDirRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.GetDirResponse.fromBuffer(value));

  FileServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.GetFileResponse> getFile($0.GetFileRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getFile, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetDirResponse> getDir($0.GetDirRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getDir, request, options: options);
  }
}

@$pb.GrpcServiceName('file.v1.FileService')
abstract class FileServiceBase extends $grpc.Service {
  $core.String get $name => 'file.v1.FileService';

  FileServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.GetFileRequest, $0.GetFileResponse>(
        'GetFile',
        getFile_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetFileRequest.fromBuffer(value),
        ($0.GetFileResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetDirRequest, $0.GetDirResponse>(
        'GetDir',
        getDir_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetDirRequest.fromBuffer(value),
        ($0.GetDirResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.GetFileResponse> getFile_Pre(
      $grpc.ServiceCall call, $async.Future<$0.GetFileRequest> request) async {
    return getFile(call, await request);
  }

  $async.Future<$0.GetDirResponse> getDir_Pre(
      $grpc.ServiceCall call, $async.Future<$0.GetDirRequest> request) async {
    return getDir(call, await request);
  }

  $async.Future<$0.GetFileResponse> getFile(
      $grpc.ServiceCall call, $0.GetFileRequest request);
  $async.Future<$0.GetDirResponse> getDir(
      $grpc.ServiceCall call, $0.GetDirRequest request);
}
