//
//  Generated code. Do not modify.
//  source: user.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

/// PostUser
class PostUserRequest extends $pb.GeneratedMessage {
  factory PostUserRequest({
    $core.String? loginId,
    $core.String? password,
  }) {
    final $result = create();
    if (loginId != null) {
      $result.loginId = loginId;
    }
    if (password != null) {
      $result.password = password;
    }
    return $result;
  }
  PostUserRequest._() : super();
  factory PostUserRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PostUserRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PostUserRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'user.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'loginId')
    ..aOS(2, _omitFieldNames ? '' : 'password')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PostUserRequest clone() => PostUserRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PostUserRequest copyWith(void Function(PostUserRequest) updates) => super.copyWith((message) => updates(message as PostUserRequest)) as PostUserRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PostUserRequest create() => PostUserRequest._();
  PostUserRequest createEmptyInstance() => create();
  static $pb.PbList<PostUserRequest> createRepeated() => $pb.PbList<PostUserRequest>();
  @$core.pragma('dart2js:noInline')
  static PostUserRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PostUserRequest>(create);
  static PostUserRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get loginId => $_getSZ(0);
  @$pb.TagNumber(1)
  set loginId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLoginId() => $_has(0);
  @$pb.TagNumber(1)
  void clearLoginId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get password => $_getSZ(1);
  @$pb.TagNumber(2)
  set password($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPassword() => $_has(1);
  @$pb.TagNumber(2)
  void clearPassword() => clearField(2);
}

class PostUserResponse extends $pb.GeneratedMessage {
  factory PostUserResponse() => create();
  PostUserResponse._() : super();
  factory PostUserResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PostUserResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PostUserResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'user.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PostUserResponse clone() => PostUserResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PostUserResponse copyWith(void Function(PostUserResponse) updates) => super.copyWith((message) => updates(message as PostUserResponse)) as PostUserResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PostUserResponse create() => PostUserResponse._();
  PostUserResponse createEmptyInstance() => create();
  static $pb.PbList<PostUserResponse> createRepeated() => $pb.PbList<PostUserResponse>();
  @$core.pragma('dart2js:noInline')
  static PostUserResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PostUserResponse>(create);
  static PostUserResponse? _defaultInstance;
}

/// PutPassword
class PutPasswordRequest extends $pb.GeneratedMessage {
  factory PutPasswordRequest({
    $core.String? resetPasswordId,
    $core.String? newPassword,
  }) {
    final $result = create();
    if (resetPasswordId != null) {
      $result.resetPasswordId = resetPasswordId;
    }
    if (newPassword != null) {
      $result.newPassword = newPassword;
    }
    return $result;
  }
  PutPasswordRequest._() : super();
  factory PutPasswordRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PutPasswordRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PutPasswordRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'user.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'resetPasswordId')
    ..aOS(2, _omitFieldNames ? '' : 'newPassword')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PutPasswordRequest clone() => PutPasswordRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PutPasswordRequest copyWith(void Function(PutPasswordRequest) updates) => super.copyWith((message) => updates(message as PutPasswordRequest)) as PutPasswordRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PutPasswordRequest create() => PutPasswordRequest._();
  PutPasswordRequest createEmptyInstance() => create();
  static $pb.PbList<PutPasswordRequest> createRepeated() => $pb.PbList<PutPasswordRequest>();
  @$core.pragma('dart2js:noInline')
  static PutPasswordRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PutPasswordRequest>(create);
  static PutPasswordRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get resetPasswordId => $_getSZ(0);
  @$pb.TagNumber(1)
  set resetPasswordId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResetPasswordId() => $_has(0);
  @$pb.TagNumber(1)
  void clearResetPasswordId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get newPassword => $_getSZ(1);
  @$pb.TagNumber(2)
  set newPassword($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNewPassword() => $_has(1);
  @$pb.TagNumber(2)
  void clearNewPassword() => clearField(2);
}

class PutPasswordResponse extends $pb.GeneratedMessage {
  factory PutPasswordResponse() => create();
  PutPasswordResponse._() : super();
  factory PutPasswordResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PutPasswordResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PutPasswordResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'user.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PutPasswordResponse clone() => PutPasswordResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PutPasswordResponse copyWith(void Function(PutPasswordResponse) updates) => super.copyWith((message) => updates(message as PutPasswordResponse)) as PutPasswordResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PutPasswordResponse create() => PutPasswordResponse._();
  PutPasswordResponse createEmptyInstance() => create();
  static $pb.PbList<PutPasswordResponse> createRepeated() => $pb.PbList<PutPasswordResponse>();
  @$core.pragma('dart2js:noInline')
  static PutPasswordResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PutPasswordResponse>(create);
  static PutPasswordResponse? _defaultInstance;
}

/// Auth
class AuthRequest extends $pb.GeneratedMessage {
  factory AuthRequest({
    $core.String? loginId,
    $core.String? passwordChallenge,
  }) {
    final $result = create();
    if (loginId != null) {
      $result.loginId = loginId;
    }
    if (passwordChallenge != null) {
      $result.passwordChallenge = passwordChallenge;
    }
    return $result;
  }
  AuthRequest._() : super();
  factory AuthRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AuthRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AuthRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'user.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'loginId')
    ..aOS(2, _omitFieldNames ? '' : 'passwordChallenge')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AuthRequest clone() => AuthRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AuthRequest copyWith(void Function(AuthRequest) updates) => super.copyWith((message) => updates(message as AuthRequest)) as AuthRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AuthRequest create() => AuthRequest._();
  AuthRequest createEmptyInstance() => create();
  static $pb.PbList<AuthRequest> createRepeated() => $pb.PbList<AuthRequest>();
  @$core.pragma('dart2js:noInline')
  static AuthRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AuthRequest>(create);
  static AuthRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get loginId => $_getSZ(0);
  @$pb.TagNumber(1)
  set loginId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLoginId() => $_has(0);
  @$pb.TagNumber(1)
  void clearLoginId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get passwordChallenge => $_getSZ(1);
  @$pb.TagNumber(2)
  set passwordChallenge($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPasswordChallenge() => $_has(1);
  @$pb.TagNumber(2)
  void clearPasswordChallenge() => clearField(2);
}

class AuthResponse extends $pb.GeneratedMessage {
  factory AuthResponse({
    $core.String? userNo,
  }) {
    final $result = create();
    if (userNo != null) {
      $result.userNo = userNo;
    }
    return $result;
  }
  AuthResponse._() : super();
  factory AuthResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AuthResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AuthResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'user.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'userNo')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AuthResponse clone() => AuthResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AuthResponse copyWith(void Function(AuthResponse) updates) => super.copyWith((message) => updates(message as AuthResponse)) as AuthResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AuthResponse create() => AuthResponse._();
  AuthResponse createEmptyInstance() => create();
  static $pb.PbList<AuthResponse> createRepeated() => $pb.PbList<AuthResponse>();
  @$core.pragma('dart2js:noInline')
  static AuthResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AuthResponse>(create);
  static AuthResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get userNo => $_getSZ(0);
  @$pb.TagNumber(1)
  set userNo($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserNo() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserNo() => clearField(1);
}

/// PutResetPasswordApplication
class PutResetPasswordApplicationRequest extends $pb.GeneratedMessage {
  factory PutResetPasswordApplicationRequest({
    $core.String? email,
  }) {
    final $result = create();
    if (email != null) {
      $result.email = email;
    }
    return $result;
  }
  PutResetPasswordApplicationRequest._() : super();
  factory PutResetPasswordApplicationRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PutResetPasswordApplicationRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PutResetPasswordApplicationRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'user.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'email')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PutResetPasswordApplicationRequest clone() => PutResetPasswordApplicationRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PutResetPasswordApplicationRequest copyWith(void Function(PutResetPasswordApplicationRequest) updates) => super.copyWith((message) => updates(message as PutResetPasswordApplicationRequest)) as PutResetPasswordApplicationRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PutResetPasswordApplicationRequest create() => PutResetPasswordApplicationRequest._();
  PutResetPasswordApplicationRequest createEmptyInstance() => create();
  static $pb.PbList<PutResetPasswordApplicationRequest> createRepeated() => $pb.PbList<PutResetPasswordApplicationRequest>();
  @$core.pragma('dart2js:noInline')
  static PutResetPasswordApplicationRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PutResetPasswordApplicationRequest>(create);
  static PutResetPasswordApplicationRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get email => $_getSZ(0);
  @$pb.TagNumber(1)
  set email($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEmail() => $_has(0);
  @$pb.TagNumber(1)
  void clearEmail() => clearField(1);
}

class PutResetPasswordApplicationResponse extends $pb.GeneratedMessage {
  factory PutResetPasswordApplicationResponse({
    $core.String? resetPasswordApplicationId,
  }) {
    final $result = create();
    if (resetPasswordApplicationId != null) {
      $result.resetPasswordApplicationId = resetPasswordApplicationId;
    }
    return $result;
  }
  PutResetPasswordApplicationResponse._() : super();
  factory PutResetPasswordApplicationResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PutResetPasswordApplicationResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PutResetPasswordApplicationResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'user.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'resetPasswordApplicationId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PutResetPasswordApplicationResponse clone() => PutResetPasswordApplicationResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PutResetPasswordApplicationResponse copyWith(void Function(PutResetPasswordApplicationResponse) updates) => super.copyWith((message) => updates(message as PutResetPasswordApplicationResponse)) as PutResetPasswordApplicationResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PutResetPasswordApplicationResponse create() => PutResetPasswordApplicationResponse._();
  PutResetPasswordApplicationResponse createEmptyInstance() => create();
  static $pb.PbList<PutResetPasswordApplicationResponse> createRepeated() => $pb.PbList<PutResetPasswordApplicationResponse>();
  @$core.pragma('dart2js:noInline')
  static PutResetPasswordApplicationResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PutResetPasswordApplicationResponse>(create);
  static PutResetPasswordApplicationResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get resetPasswordApplicationId => $_getSZ(0);
  @$pb.TagNumber(1)
  set resetPasswordApplicationId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResetPasswordApplicationId() => $_has(0);
  @$pb.TagNumber(1)
  void clearResetPasswordApplicationId() => clearField(1);
}

/// Vacuum
class VacuumRequest extends $pb.GeneratedMessage {
  factory VacuumRequest() => create();
  VacuumRequest._() : super();
  factory VacuumRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VacuumRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'VacuumRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'user.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  VacuumRequest clone() => VacuumRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  VacuumRequest copyWith(void Function(VacuumRequest) updates) => super.copyWith((message) => updates(message as VacuumRequest)) as VacuumRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VacuumRequest create() => VacuumRequest._();
  VacuumRequest createEmptyInstance() => create();
  static $pb.PbList<VacuumRequest> createRepeated() => $pb.PbList<VacuumRequest>();
  @$core.pragma('dart2js:noInline')
  static VacuumRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VacuumRequest>(create);
  static VacuumRequest? _defaultInstance;
}

class VacuumResponse extends $pb.GeneratedMessage {
  factory VacuumResponse() => create();
  VacuumResponse._() : super();
  factory VacuumResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VacuumResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'VacuumResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'user.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  VacuumResponse clone() => VacuumResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  VacuumResponse copyWith(void Function(VacuumResponse) updates) => super.copyWith((message) => updates(message as VacuumResponse)) as VacuumResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VacuumResponse create() => VacuumResponse._();
  VacuumResponse createEmptyInstance() => create();
  static $pb.PbList<VacuumResponse> createRepeated() => $pb.PbList<VacuumResponse>();
  @$core.pragma('dart2js:noInline')
  static VacuumResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VacuumResponse>(create);
  static VacuumResponse? _defaultInstance;
}

/// PutEmail
class PutEmailRequest extends $pb.GeneratedMessage {
  factory PutEmailRequest({
    $core.String? userNo,
    $core.String? email,
  }) {
    final $result = create();
    if (userNo != null) {
      $result.userNo = userNo;
    }
    if (email != null) {
      $result.email = email;
    }
    return $result;
  }
  PutEmailRequest._() : super();
  factory PutEmailRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PutEmailRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PutEmailRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'user.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'userNo')
    ..aOS(2, _omitFieldNames ? '' : 'email')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PutEmailRequest clone() => PutEmailRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PutEmailRequest copyWith(void Function(PutEmailRequest) updates) => super.copyWith((message) => updates(message as PutEmailRequest)) as PutEmailRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PutEmailRequest create() => PutEmailRequest._();
  PutEmailRequest createEmptyInstance() => create();
  static $pb.PbList<PutEmailRequest> createRepeated() => $pb.PbList<PutEmailRequest>();
  @$core.pragma('dart2js:noInline')
  static PutEmailRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PutEmailRequest>(create);
  static PutEmailRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get userNo => $_getSZ(0);
  @$pb.TagNumber(1)
  set userNo($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserNo() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserNo() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get email => $_getSZ(1);
  @$pb.TagNumber(2)
  set email($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEmail() => $_has(1);
  @$pb.TagNumber(2)
  void clearEmail() => clearField(2);
}

class PutEmailResponse extends $pb.GeneratedMessage {
  factory PutEmailResponse() => create();
  PutEmailResponse._() : super();
  factory PutEmailResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PutEmailResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PutEmailResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'user.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PutEmailResponse clone() => PutEmailResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PutEmailResponse copyWith(void Function(PutEmailResponse) updates) => super.copyWith((message) => updates(message as PutEmailResponse)) as PutEmailResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PutEmailResponse create() => PutEmailResponse._();
  PutEmailResponse createEmptyInstance() => create();
  static $pb.PbList<PutEmailResponse> createRepeated() => $pb.PbList<PutEmailResponse>();
  @$core.pragma('dart2js:noInline')
  static PutEmailResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PutEmailResponse>(create);
  static PutEmailResponse? _defaultInstance;
}

/// GetEmail
class GetEmailRequest extends $pb.GeneratedMessage {
  factory GetEmailRequest({
    $core.String? userNo,
  }) {
    final $result = create();
    if (userNo != null) {
      $result.userNo = userNo;
    }
    return $result;
  }
  GetEmailRequest._() : super();
  factory GetEmailRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetEmailRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetEmailRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'user.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'userNo')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetEmailRequest clone() => GetEmailRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetEmailRequest copyWith(void Function(GetEmailRequest) updates) => super.copyWith((message) => updates(message as GetEmailRequest)) as GetEmailRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetEmailRequest create() => GetEmailRequest._();
  GetEmailRequest createEmptyInstance() => create();
  static $pb.PbList<GetEmailRequest> createRepeated() => $pb.PbList<GetEmailRequest>();
  @$core.pragma('dart2js:noInline')
  static GetEmailRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetEmailRequest>(create);
  static GetEmailRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get userNo => $_getSZ(0);
  @$pb.TagNumber(1)
  set userNo($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserNo() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserNo() => clearField(1);
}

class GetEmailResponse extends $pb.GeneratedMessage {
  factory GetEmailResponse({
    $core.String? email,
  }) {
    final $result = create();
    if (email != null) {
      $result.email = email;
    }
    return $result;
  }
  GetEmailResponse._() : super();
  factory GetEmailResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetEmailResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetEmailResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'user.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'email')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetEmailResponse clone() => GetEmailResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetEmailResponse copyWith(void Function(GetEmailResponse) updates) => super.copyWith((message) => updates(message as GetEmailResponse)) as GetEmailResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetEmailResponse create() => GetEmailResponse._();
  GetEmailResponse createEmptyInstance() => create();
  static $pb.PbList<GetEmailResponse> createRepeated() => $pb.PbList<GetEmailResponse>();
  @$core.pragma('dart2js:noInline')
  static GetEmailResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetEmailResponse>(create);
  static GetEmailResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get email => $_getSZ(0);
  @$pb.TagNumber(1)
  set email($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEmail() => $_has(0);
  @$pb.TagNumber(1)
  void clearEmail() => clearField(1);
}

/// DeleteEmail
class DeleteEmailRequest extends $pb.GeneratedMessage {
  factory DeleteEmailRequest({
    $core.String? userNo,
  }) {
    final $result = create();
    if (userNo != null) {
      $result.userNo = userNo;
    }
    return $result;
  }
  DeleteEmailRequest._() : super();
  factory DeleteEmailRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteEmailRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteEmailRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'user.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'userNo')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteEmailRequest clone() => DeleteEmailRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteEmailRequest copyWith(void Function(DeleteEmailRequest) updates) => super.copyWith((message) => updates(message as DeleteEmailRequest)) as DeleteEmailRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteEmailRequest create() => DeleteEmailRequest._();
  DeleteEmailRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteEmailRequest> createRepeated() => $pb.PbList<DeleteEmailRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteEmailRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteEmailRequest>(create);
  static DeleteEmailRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get userNo => $_getSZ(0);
  @$pb.TagNumber(1)
  set userNo($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserNo() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserNo() => clearField(1);
}

class DeleteEmailResponse extends $pb.GeneratedMessage {
  factory DeleteEmailResponse() => create();
  DeleteEmailResponse._() : super();
  factory DeleteEmailResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteEmailResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteEmailResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'user.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteEmailResponse clone() => DeleteEmailResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteEmailResponse copyWith(void Function(DeleteEmailResponse) updates) => super.copyWith((message) => updates(message as DeleteEmailResponse)) as DeleteEmailResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteEmailResponse create() => DeleteEmailResponse._();
  DeleteEmailResponse createEmptyInstance() => create();
  static $pb.PbList<DeleteEmailResponse> createRepeated() => $pb.PbList<DeleteEmailResponse>();
  @$core.pragma('dart2js:noInline')
  static DeleteEmailResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteEmailResponse>(create);
  static DeleteEmailResponse? _defaultInstance;
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
