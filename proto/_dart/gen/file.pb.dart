//
//  Generated code. Do not modify.
//  source: file.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

/// GetFile
class GetFileRequest extends $pb.GeneratedMessage {
  factory GetFileRequest({
    $core.String? path,
  }) {
    final $result = create();
    if (path != null) {
      $result.path = path;
    }
    return $result;
  }
  GetFileRequest._() : super();
  factory GetFileRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetFileRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetFileRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'file.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'path')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetFileRequest clone() => GetFileRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetFileRequest copyWith(void Function(GetFileRequest) updates) => super.copyWith((message) => updates(message as GetFileRequest)) as GetFileRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetFileRequest create() => GetFileRequest._();
  GetFileRequest createEmptyInstance() => create();
  static $pb.PbList<GetFileRequest> createRepeated() => $pb.PbList<GetFileRequest>();
  @$core.pragma('dart2js:noInline')
  static GetFileRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetFileRequest>(create);
  static GetFileRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get path => $_getSZ(0);
  @$pb.TagNumber(1)
  set path($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPath() => $_has(0);
  @$pb.TagNumber(1)
  void clearPath() => clearField(1);
}

class GetFileResponse extends $pb.GeneratedMessage {
  factory GetFileResponse({
    $core.List<$core.int>? file,
  }) {
    final $result = create();
    if (file != null) {
      $result.file = file;
    }
    return $result;
  }
  GetFileResponse._() : super();
  factory GetFileResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetFileResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetFileResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'file.v1'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, _omitFieldNames ? '' : 'file', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetFileResponse clone() => GetFileResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetFileResponse copyWith(void Function(GetFileResponse) updates) => super.copyWith((message) => updates(message as GetFileResponse)) as GetFileResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetFileResponse create() => GetFileResponse._();
  GetFileResponse createEmptyInstance() => create();
  static $pb.PbList<GetFileResponse> createRepeated() => $pb.PbList<GetFileResponse>();
  @$core.pragma('dart2js:noInline')
  static GetFileResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetFileResponse>(create);
  static GetFileResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get file => $_getN(0);
  @$pb.TagNumber(1)
  set file($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFile() => $_has(0);
  @$pb.TagNumber(1)
  void clearFile() => clearField(1);
}

/// GetDir
class GetDirRequest extends $pb.GeneratedMessage {
  factory GetDirRequest({
    $core.String? dirPath,
  }) {
    final $result = create();
    if (dirPath != null) {
      $result.dirPath = dirPath;
    }
    return $result;
  }
  GetDirRequest._() : super();
  factory GetDirRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetDirRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetDirRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'file.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'dirPath')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetDirRequest clone() => GetDirRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetDirRequest copyWith(void Function(GetDirRequest) updates) => super.copyWith((message) => updates(message as GetDirRequest)) as GetDirRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetDirRequest create() => GetDirRequest._();
  GetDirRequest createEmptyInstance() => create();
  static $pb.PbList<GetDirRequest> createRepeated() => $pb.PbList<GetDirRequest>();
  @$core.pragma('dart2js:noInline')
  static GetDirRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetDirRequest>(create);
  static GetDirRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get dirPath => $_getSZ(0);
  @$pb.TagNumber(1)
  set dirPath($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDirPath() => $_has(0);
  @$pb.TagNumber(1)
  void clearDirPath() => clearField(1);
}

class GetDirResponse extends $pb.GeneratedMessage {
  factory GetDirResponse({
    $core.List<$core.int>? tar,
  }) {
    final $result = create();
    if (tar != null) {
      $result.tar = tar;
    }
    return $result;
  }
  GetDirResponse._() : super();
  factory GetDirResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetDirResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetDirResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'file.v1'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, _omitFieldNames ? '' : 'tar', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetDirResponse clone() => GetDirResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetDirResponse copyWith(void Function(GetDirResponse) updates) => super.copyWith((message) => updates(message as GetDirResponse)) as GetDirResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetDirResponse create() => GetDirResponse._();
  GetDirResponse createEmptyInstance() => create();
  static $pb.PbList<GetDirResponse> createRepeated() => $pb.PbList<GetDirResponse>();
  @$core.pragma('dart2js:noInline')
  static GetDirResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetDirResponse>(create);
  static GetDirResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get tar => $_getN(0);
  @$pb.TagNumber(1)
  set tar($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTar() => $_has(0);
  @$pb.TagNumber(1)
  void clearTar() => clearField(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
