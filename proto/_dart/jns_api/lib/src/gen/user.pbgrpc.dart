//
//  Generated code. Do not modify.
//  source: user.proto
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

import 'user.pb.dart' as $0;

export 'user.pb.dart';

@$pb.GrpcServiceName('user.v1.UserService')
class UserServiceClient extends $grpc.Client {
  static final _$postUser =
      $grpc.ClientMethod<$0.PostUserRequest, $0.PostUserResponse>(
          '/user.v1.UserService/PostUser',
          ($0.PostUserRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.PostUserResponse.fromBuffer(value));
  static final _$putPassword =
      $grpc.ClientMethod<$0.PutPasswordRequest, $0.PutPasswordResponse>(
          '/user.v1.UserService/PutPassword',
          ($0.PutPasswordRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.PutPasswordResponse.fromBuffer(value));
  static final _$auth = $grpc.ClientMethod<$0.AuthRequest, $0.AuthResponse>(
      '/user.v1.UserService/Auth',
      ($0.AuthRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.AuthResponse.fromBuffer(value));
  static final _$putResetPasswordApplication = $grpc.ClientMethod<
          $0.PutResetPasswordApplicationRequest,
          $0.PutResetPasswordApplicationResponse>(
      '/user.v1.UserService/PutResetPasswordApplication',
      ($0.PutResetPasswordApplicationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.PutResetPasswordApplicationResponse.fromBuffer(value));
  static final _$vacuum =
      $grpc.ClientMethod<$0.VacuumRequest, $0.VacuumResponse>(
          '/user.v1.UserService/Vacuum',
          ($0.VacuumRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.VacuumResponse.fromBuffer(value));
  static final _$putEmail =
      $grpc.ClientMethod<$0.PutEmailRequest, $0.PutEmailResponse>(
          '/user.v1.UserService/PutEmail',
          ($0.PutEmailRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.PutEmailResponse.fromBuffer(value));
  static final _$getEmail =
      $grpc.ClientMethod<$0.GetEmailRequest, $0.GetEmailResponse>(
          '/user.v1.UserService/GetEmail',
          ($0.GetEmailRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.GetEmailResponse.fromBuffer(value));
  static final _$deleteEmail =
      $grpc.ClientMethod<$0.DeleteEmailRequest, $0.DeleteEmailResponse>(
          '/user.v1.UserService/DeleteEmail',
          ($0.DeleteEmailRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.DeleteEmailResponse.fromBuffer(value));

  UserServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.PostUserResponse> postUser($0.PostUserRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$postUser, request, options: options);
  }

  $grpc.ResponseFuture<$0.PutPasswordResponse> putPassword(
      $0.PutPasswordRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$putPassword, request, options: options);
  }

  $grpc.ResponseFuture<$0.AuthResponse> auth($0.AuthRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$auth, request, options: options);
  }

  $grpc.ResponseFuture<$0.PutResetPasswordApplicationResponse>
      putResetPasswordApplication($0.PutResetPasswordApplicationRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$putResetPasswordApplication, request,
        options: options);
  }

  $grpc.ResponseFuture<$0.VacuumResponse> vacuum($0.VacuumRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$vacuum, request, options: options);
  }

  $grpc.ResponseFuture<$0.PutEmailResponse> putEmail($0.PutEmailRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$putEmail, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetEmailResponse> getEmail($0.GetEmailRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getEmail, request, options: options);
  }

  $grpc.ResponseFuture<$0.DeleteEmailResponse> deleteEmail(
      $0.DeleteEmailRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteEmail, request, options: options);
  }
}

@$pb.GrpcServiceName('user.v1.UserService')
abstract class UserServiceBase extends $grpc.Service {
  $core.String get $name => 'user.v1.UserService';

  UserServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.PostUserRequest, $0.PostUserResponse>(
        'PostUser',
        postUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.PostUserRequest.fromBuffer(value),
        ($0.PostUserResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.PutPasswordRequest, $0.PutPasswordResponse>(
            'PutPassword',
            putPassword_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.PutPasswordRequest.fromBuffer(value),
            ($0.PutPasswordResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AuthRequest, $0.AuthResponse>(
        'Auth',
        auth_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.AuthRequest.fromBuffer(value),
        ($0.AuthResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.PutResetPasswordApplicationRequest,
            $0.PutResetPasswordApplicationResponse>(
        'PutResetPasswordApplication',
        putResetPasswordApplication_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.PutResetPasswordApplicationRequest.fromBuffer(value),
        ($0.PutResetPasswordApplicationResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.VacuumRequest, $0.VacuumResponse>(
        'Vacuum',
        vacuum_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.VacuumRequest.fromBuffer(value),
        ($0.VacuumResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.PutEmailRequest, $0.PutEmailResponse>(
        'PutEmail',
        putEmail_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.PutEmailRequest.fromBuffer(value),
        ($0.PutEmailResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetEmailRequest, $0.GetEmailResponse>(
        'GetEmail',
        getEmail_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetEmailRequest.fromBuffer(value),
        ($0.GetEmailResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.DeleteEmailRequest, $0.DeleteEmailResponse>(
            'DeleteEmail',
            deleteEmail_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.DeleteEmailRequest.fromBuffer(value),
            ($0.DeleteEmailResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.PostUserResponse> postUser_Pre(
      $grpc.ServiceCall call, $async.Future<$0.PostUserRequest> request) async {
    return postUser(call, await request);
  }

  $async.Future<$0.PutPasswordResponse> putPassword_Pre($grpc.ServiceCall call,
      $async.Future<$0.PutPasswordRequest> request) async {
    return putPassword(call, await request);
  }

  $async.Future<$0.AuthResponse> auth_Pre(
      $grpc.ServiceCall call, $async.Future<$0.AuthRequest> request) async {
    return auth(call, await request);
  }

  $async.Future<$0.PutResetPasswordApplicationResponse>
      putResetPasswordApplication_Pre($grpc.ServiceCall call,
          $async.Future<$0.PutResetPasswordApplicationRequest> request) async {
    return putResetPasswordApplication(call, await request);
  }

  $async.Future<$0.VacuumResponse> vacuum_Pre(
      $grpc.ServiceCall call, $async.Future<$0.VacuumRequest> request) async {
    return vacuum(call, await request);
  }

  $async.Future<$0.PutEmailResponse> putEmail_Pre(
      $grpc.ServiceCall call, $async.Future<$0.PutEmailRequest> request) async {
    return putEmail(call, await request);
  }

  $async.Future<$0.GetEmailResponse> getEmail_Pre(
      $grpc.ServiceCall call, $async.Future<$0.GetEmailRequest> request) async {
    return getEmail(call, await request);
  }

  $async.Future<$0.DeleteEmailResponse> deleteEmail_Pre($grpc.ServiceCall call,
      $async.Future<$0.DeleteEmailRequest> request) async {
    return deleteEmail(call, await request);
  }

  $async.Future<$0.PostUserResponse> postUser(
      $grpc.ServiceCall call, $0.PostUserRequest request);
  $async.Future<$0.PutPasswordResponse> putPassword(
      $grpc.ServiceCall call, $0.PutPasswordRequest request);
  $async.Future<$0.AuthResponse> auth(
      $grpc.ServiceCall call, $0.AuthRequest request);
  $async.Future<$0.PutResetPasswordApplicationResponse>
      putResetPasswordApplication($grpc.ServiceCall call,
          $0.PutResetPasswordApplicationRequest request);
  $async.Future<$0.VacuumResponse> vacuum(
      $grpc.ServiceCall call, $0.VacuumRequest request);
  $async.Future<$0.PutEmailResponse> putEmail(
      $grpc.ServiceCall call, $0.PutEmailRequest request);
  $async.Future<$0.GetEmailResponse> getEmail(
      $grpc.ServiceCall call, $0.GetEmailRequest request);
  $async.Future<$0.DeleteEmailResponse> deleteEmail(
      $grpc.ServiceCall call, $0.DeleteEmailRequest request);
}
