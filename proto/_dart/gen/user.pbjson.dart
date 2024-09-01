//
//  Generated code. Do not modify.
//  source: user.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use postUserRequestDescriptor instead')
const PostUserRequest$json = {
  '1': 'PostUserRequest',
  '2': [
    {'1': 'login_id', '3': 1, '4': 1, '5': 9, '10': 'loginId'},
    {'1': 'password', '3': 2, '4': 1, '5': 9, '10': 'password'},
  ],
};

/// Descriptor for `PostUserRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List postUserRequestDescriptor = $convert.base64Decode(
    'Cg9Qb3N0VXNlclJlcXVlc3QSGQoIbG9naW5faWQYASABKAlSB2xvZ2luSWQSGgoIcGFzc3dvcm'
    'QYAiABKAlSCHBhc3N3b3Jk');

@$core.Deprecated('Use postUserResponseDescriptor instead')
const PostUserResponse$json = {
  '1': 'PostUserResponse',
};

/// Descriptor for `PostUserResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List postUserResponseDescriptor = $convert.base64Decode(
    'ChBQb3N0VXNlclJlc3BvbnNl');

@$core.Deprecated('Use putPasswordRequestDescriptor instead')
const PutPasswordRequest$json = {
  '1': 'PutPasswordRequest',
  '2': [
    {'1': 'reset_password_id', '3': 1, '4': 1, '5': 9, '10': 'resetPasswordId'},
    {'1': 'new_password', '3': 2, '4': 1, '5': 9, '10': 'newPassword'},
  ],
};

/// Descriptor for `PutPasswordRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List putPasswordRequestDescriptor = $convert.base64Decode(
    'ChJQdXRQYXNzd29yZFJlcXVlc3QSKgoRcmVzZXRfcGFzc3dvcmRfaWQYASABKAlSD3Jlc2V0UG'
    'Fzc3dvcmRJZBIhCgxuZXdfcGFzc3dvcmQYAiABKAlSC25ld1Bhc3N3b3Jk');

@$core.Deprecated('Use putPasswordResponseDescriptor instead')
const PutPasswordResponse$json = {
  '1': 'PutPasswordResponse',
};

/// Descriptor for `PutPasswordResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List putPasswordResponseDescriptor = $convert.base64Decode(
    'ChNQdXRQYXNzd29yZFJlc3BvbnNl');

@$core.Deprecated('Use authRequestDescriptor instead')
const AuthRequest$json = {
  '1': 'AuthRequest',
  '2': [
    {'1': 'login_id', '3': 1, '4': 1, '5': 9, '10': 'loginId'},
    {'1': 'password_challenge', '3': 2, '4': 1, '5': 9, '10': 'passwordChallenge'},
  ],
};

/// Descriptor for `AuthRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authRequestDescriptor = $convert.base64Decode(
    'CgtBdXRoUmVxdWVzdBIZCghsb2dpbl9pZBgBIAEoCVIHbG9naW5JZBItChJwYXNzd29yZF9jaG'
    'FsbGVuZ2UYAiABKAlSEXBhc3N3b3JkQ2hhbGxlbmdl');

@$core.Deprecated('Use authResponseDescriptor instead')
const AuthResponse$json = {
  '1': 'AuthResponse',
  '2': [
    {'1': 'user_no', '3': 1, '4': 1, '5': 9, '10': 'userNo'},
  ],
};

/// Descriptor for `AuthResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authResponseDescriptor = $convert.base64Decode(
    'CgxBdXRoUmVzcG9uc2USFwoHdXNlcl9ubxgBIAEoCVIGdXNlck5v');

@$core.Deprecated('Use putResetPasswordApplicationRequestDescriptor instead')
const PutResetPasswordApplicationRequest$json = {
  '1': 'PutResetPasswordApplicationRequest',
  '2': [
    {'1': 'email', '3': 1, '4': 1, '5': 9, '10': 'email'},
  ],
};

/// Descriptor for `PutResetPasswordApplicationRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List putResetPasswordApplicationRequestDescriptor = $convert.base64Decode(
    'CiJQdXRSZXNldFBhc3N3b3JkQXBwbGljYXRpb25SZXF1ZXN0EhQKBWVtYWlsGAEgASgJUgVlbW'
    'FpbA==');

@$core.Deprecated('Use putResetPasswordApplicationResponseDescriptor instead')
const PutResetPasswordApplicationResponse$json = {
  '1': 'PutResetPasswordApplicationResponse',
  '2': [
    {'1': 'reset_password_application_id', '3': 1, '4': 1, '5': 9, '10': 'resetPasswordApplicationId'},
  ],
};

/// Descriptor for `PutResetPasswordApplicationResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List putResetPasswordApplicationResponseDescriptor = $convert.base64Decode(
    'CiNQdXRSZXNldFBhc3N3b3JkQXBwbGljYXRpb25SZXNwb25zZRJBCh1yZXNldF9wYXNzd29yZF'
    '9hcHBsaWNhdGlvbl9pZBgBIAEoCVIacmVzZXRQYXNzd29yZEFwcGxpY2F0aW9uSWQ=');

@$core.Deprecated('Use vacuumRequestDescriptor instead')
const VacuumRequest$json = {
  '1': 'VacuumRequest',
};

/// Descriptor for `VacuumRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List vacuumRequestDescriptor = $convert.base64Decode(
    'Cg1WYWN1dW1SZXF1ZXN0');

@$core.Deprecated('Use vacuumResponseDescriptor instead')
const VacuumResponse$json = {
  '1': 'VacuumResponse',
};

/// Descriptor for `VacuumResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List vacuumResponseDescriptor = $convert.base64Decode(
    'Cg5WYWN1dW1SZXNwb25zZQ==');

@$core.Deprecated('Use putEmailRequestDescriptor instead')
const PutEmailRequest$json = {
  '1': 'PutEmailRequest',
  '2': [
    {'1': 'user_no', '3': 1, '4': 1, '5': 9, '10': 'userNo'},
    {'1': 'email', '3': 2, '4': 1, '5': 9, '10': 'email'},
  ],
};

/// Descriptor for `PutEmailRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List putEmailRequestDescriptor = $convert.base64Decode(
    'Cg9QdXRFbWFpbFJlcXVlc3QSFwoHdXNlcl9ubxgBIAEoCVIGdXNlck5vEhQKBWVtYWlsGAIgAS'
    'gJUgVlbWFpbA==');

@$core.Deprecated('Use putEmailResponseDescriptor instead')
const PutEmailResponse$json = {
  '1': 'PutEmailResponse',
};

/// Descriptor for `PutEmailResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List putEmailResponseDescriptor = $convert.base64Decode(
    'ChBQdXRFbWFpbFJlc3BvbnNl');

@$core.Deprecated('Use getEmailRequestDescriptor instead')
const GetEmailRequest$json = {
  '1': 'GetEmailRequest',
  '2': [
    {'1': 'user_no', '3': 1, '4': 1, '5': 9, '10': 'userNo'},
  ],
};

/// Descriptor for `GetEmailRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getEmailRequestDescriptor = $convert.base64Decode(
    'Cg9HZXRFbWFpbFJlcXVlc3QSFwoHdXNlcl9ubxgBIAEoCVIGdXNlck5v');

@$core.Deprecated('Use getEmailResponseDescriptor instead')
const GetEmailResponse$json = {
  '1': 'GetEmailResponse',
  '2': [
    {'1': 'email', '3': 1, '4': 1, '5': 9, '10': 'email'},
  ],
};

/// Descriptor for `GetEmailResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getEmailResponseDescriptor = $convert.base64Decode(
    'ChBHZXRFbWFpbFJlc3BvbnNlEhQKBWVtYWlsGAEgASgJUgVlbWFpbA==');

@$core.Deprecated('Use deleteEmailRequestDescriptor instead')
const DeleteEmailRequest$json = {
  '1': 'DeleteEmailRequest',
  '2': [
    {'1': 'user_no', '3': 1, '4': 1, '5': 9, '10': 'userNo'},
  ],
};

/// Descriptor for `DeleteEmailRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteEmailRequestDescriptor = $convert.base64Decode(
    'ChJEZWxldGVFbWFpbFJlcXVlc3QSFwoHdXNlcl9ubxgBIAEoCVIGdXNlck5v');

@$core.Deprecated('Use deleteEmailResponseDescriptor instead')
const DeleteEmailResponse$json = {
  '1': 'DeleteEmailResponse',
};

/// Descriptor for `DeleteEmailResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteEmailResponseDescriptor = $convert.base64Decode(
    'ChNEZWxldGVFbWFpbFJlc3BvbnNl');

