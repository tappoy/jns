//
//  Generated code. Do not modify.
//  source: file.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use getFileRequestDescriptor instead')
const GetFileRequest$json = {
  '1': 'GetFileRequest',
  '2': [
    {'1': 'path', '3': 1, '4': 1, '5': 9, '10': 'path'},
  ],
};

/// Descriptor for `GetFileRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getFileRequestDescriptor = $convert.base64Decode(
    'Cg5HZXRGaWxlUmVxdWVzdBISCgRwYXRoGAEgASgJUgRwYXRo');

@$core.Deprecated('Use getFileResponseDescriptor instead')
const GetFileResponse$json = {
  '1': 'GetFileResponse',
  '2': [
    {'1': 'file', '3': 1, '4': 1, '5': 12, '10': 'file'},
  ],
};

/// Descriptor for `GetFileResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getFileResponseDescriptor = $convert.base64Decode(
    'Cg9HZXRGaWxlUmVzcG9uc2USEgoEZmlsZRgBIAEoDFIEZmlsZQ==');

@$core.Deprecated('Use getDirRequestDescriptor instead')
const GetDirRequest$json = {
  '1': 'GetDirRequest',
  '2': [
    {'1': 'dir_path', '3': 1, '4': 1, '5': 9, '10': 'dirPath'},
  ],
};

/// Descriptor for `GetDirRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getDirRequestDescriptor = $convert.base64Decode(
    'Cg1HZXREaXJSZXF1ZXN0EhkKCGRpcl9wYXRoGAEgASgJUgdkaXJQYXRo');

@$core.Deprecated('Use getDirResponseDescriptor instead')
const GetDirResponse$json = {
  '1': 'GetDirResponse',
  '2': [
    {'1': 'tar', '3': 1, '4': 1, '5': 12, '10': 'tar'},
  ],
};

/// Descriptor for `GetDirResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getDirResponseDescriptor = $convert.base64Decode(
    'Cg5HZXREaXJSZXNwb25zZRIQCgN0YXIYASABKAxSA3Rhcg==');

