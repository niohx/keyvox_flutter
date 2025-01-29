import 'dart:convert';
import 'package:crypto/crypto.dart';
import 'package:http/http.dart' as http;
import 'models/api_response.dart';
import 'models/unit.dart';
import 'models/lock_pin.dart';
import 'models/lock_history.dart';

class KeyvoxClient {
  final String apiKey;
  final String secretKey;
  final String baseUrl;
  final http.Client _httpClient;

  KeyvoxClient({
    required this.apiKey,
    required this.secretKey,
    this.baseUrl = 'https://eco.blockchainlock.io/api/eagle-pms',
    http.Client? httpClient,
  }) : _httpClient = httpClient ?? http.Client();

  Future<String> _generateAuthHeader(
    String method,
    String path,
    String date,
    String digest,
  ) async {
    final requestLine = '${method.toUpperCase()} $path HTTP/1.1';
    final stringToSign = 'date: $date\n$requestLine\ndigest: $digest';

    final hmacSha256 = Hmac(sha256, utf8.encode(secretKey));
    final signature = base64.encode(
      hmacSha256.convert(utf8.encode(stringToSign)).bytes,
    );

    return 'hmac username="$apiKey", '
        'algorithm="hmac-sha256", '
        'headers="date request-line digest", '
        'signature="$signature"';
  }

  Future<ApiResponse<List<Unit>>> getUnits() async {
    const path = '/v1/getUnits';
    final date = DateTime.now().toUtc().toString();
    final digest = 'SHA-256=${base64.encode(sha256.convert([]).bytes)}';

    final headers = {
      'x-target-host': 'default.pms',
      'date': date,
      'digest': digest,
      'authorization': await _generateAuthHeader('POST', path, date, digest),
    };

    final response = await _httpClient.post(
      Uri.parse('$baseUrl$path'),
      headers: headers,
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to get units: ${response.statusCode}');
    }

    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return ApiResponse.fromJson(
      json,
      (json) => (json as List).map((e) => Unit.fromJson(e)).toList(),
    );
  }

  // 部屋暗証番号リスト取得
  Future<ApiResponse<List<LockPin>>> getUnitPinList({
    required String unitId,
    String? sTime,
    String? eTime,
    String? position,
    String? records,
  }) async {
    const path = '/v1/getUnitPinList';
    final date = DateTime.now().toUtc().toString();

    final body = {
      'unitId': unitId,
      if (sTime != null) 'sTime': sTime,
      if (eTime != null) 'eTime': eTime,
      if (position != null) 'position': position,
      if (records != null) 'records': records,
    };

    final digest =
        'SHA-256=${base64.encode(sha256.convert(utf8.encode(jsonEncode(body))).bytes)}';

    final headers = {
      'x-target-host': 'default.pms',
      'date': date,
      'digest': digest,
      'authorization': await _generateAuthHeader('POST', path, date, digest),
      'content-type': 'application/json',
    };

    final response = await _httpClient.post(
      Uri.parse('$baseUrl$path'),
      headers: headers,
      body: jsonEncode(body),
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to get unit pin list: ${response.statusCode}');
    }

    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return ApiResponse.fromJson(
      json,
      (json) => (json as List).map((e) => LockPin.fromJson(e)).toList(),
    );
  }

  // 暗証番号発行
  Future<ApiResponse<LockPin>> createLockPin({
    required String unitId,
    String? pinCode,
    required String sTime,
    required String eTime,
    String? targetName,
  }) async {
    const path = '/v1/createLockPin';
    final date = DateTime.now().toUtc().toString();

    final body = {
      'unitId': unitId,
      if (pinCode != null) 'pinCode': pinCode,
      'sTime': sTime,
      'eTime': eTime,
      if (targetName != null) 'targetName': targetName,
    };

    final digest =
        'SHA-256=${base64.encode(sha256.convert(utf8.encode(jsonEncode(body))).bytes)}';

    final headers = {
      'x-target-host': 'default.pms',
      'date': date,
      'digest': digest,
      'authorization': await _generateAuthHeader('POST', path, date, digest),
      'content-type': 'application/json',
    };

    final response = await _httpClient.post(
      Uri.parse('$baseUrl$path'),
      headers: headers,
      body: jsonEncode(body),
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to create lock pin: ${response.statusCode}');
    }

    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return ApiResponse.fromJson(
      json,
      (json) => LockPin.fromJson(json as Map<String, dynamic>),
    );
  }

  // 暗証番号変更
  Future<ApiResponse<void>> changeLockPin({
    required String pinId,
    String? pinCode,
    required String sTime,
    required String eTime,
    String? targetName,
  }) async {
    const path = '/v1/changeLockPin';
    final date = DateTime.now().toUtc().toString();

    final body = {
      'pinId': pinId,
      if (pinCode != null) 'pinCode': pinCode,
      'sTime': sTime,
      'eTime': eTime,
      if (targetName != null) 'targetName': targetName,
    };

    final digest =
        'SHA-256=${base64.encode(sha256.convert(utf8.encode(jsonEncode(body))).bytes)}';

    final headers = {
      'x-target-host': 'default.pms',
      'date': date,
      'digest': digest,
      'authorization': await _generateAuthHeader('POST', path, date, digest),
      'content-type': 'application/json',
    };

    final response = await _httpClient.post(
      Uri.parse('$baseUrl$path'),
      headers: headers,
      body: jsonEncode(body),
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to change lock pin: ${response.statusCode}');
    }

    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return ApiResponse.fromJson(json, (_) => null);
  }

  // 暗証番号削除
  Future<ApiResponse<void>> deleteLockPin({
    required String pinId,
  }) async {
    const path = '/v1/deleteLockPin';
    final date = DateTime.now().toUtc().toString();

    final body = {'pinId': pinId};

    final digest =
        'SHA-256=${base64.encode(sha256.convert(utf8.encode(jsonEncode(body))).bytes)}';

    final headers = {
      'x-target-host': 'default.pms',
      'date': date,
      'digest': digest,
      'authorization': await _generateAuthHeader('POST', path, date, digest),
      'content-type': 'application/json',
    };

    final response = await _httpClient.post(
      Uri.parse('$baseUrl$path'),
      headers: headers,
      body: jsonEncode(body),
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to delete lock pin: ${response.statusCode}');
    }

    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return ApiResponse.fromJson(json, (_) => null);
  }

  // 暗証番号履歴取得
  Future<ApiResponse<List<LockHistory>>> getLockHistory({
    required String unitId,
    String? sTime,
    String? eTime,
    String? position,
    String? records,
  }) async {
    const path = '/v1/getLockHistory';
    final date = DateTime.now().toUtc().toString();

    final body = {
      'unitId': unitId,
      if (sTime != null) 'sTime': sTime,
      if (eTime != null) 'eTime': eTime,
      if (position != null) 'position': position,
      if (records != null) 'records': records,
    };

    final digest =
        'SHA-256=${base64.encode(sha256.convert(utf8.encode(jsonEncode(body))).bytes)}';

    final headers = {
      'x-target-host': 'default.pms',
      'date': date,
      'digest': digest,
      'authorization': await _generateAuthHeader('POST', path, date, digest),
      'content-type': 'application/json',
    };

    final response = await _httpClient.post(
      Uri.parse('$baseUrl$path'),
      headers: headers,
      body: jsonEncode(body),
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to get lock history: ${response.statusCode}');
    }

    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return ApiResponse.fromJson(
      json,
      (json) => (json as List).map((e) => LockHistory.fromJson(e)).toList(),
    );
  }

  // スマートロック開錠
  Future<ApiResponse<void>> unlockDoor({
    required String unitId,
  }) async {
    const path = '/v1/unlockDoor';
    final date = DateTime.now().toUtc().toString();

    final body = {'unitId': unitId};

    final digest =
        'SHA-256=${base64.encode(sha256.convert(utf8.encode(jsonEncode(body))).bytes)}';

    final headers = {
      'x-target-host': 'default.pms',
      'date': date,
      'digest': digest,
      'authorization': await _generateAuthHeader('POST', path, date, digest),
      'content-type': 'application/json',
    };

    final response = await _httpClient.post(
      Uri.parse('$baseUrl$path'),
      headers: headers,
      body: jsonEncode(body),
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to unlock door: ${response.statusCode}');
    }

    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return ApiResponse.fromJson(json, (_) => null);
  }

  // スマートロック施錠
  Future<ApiResponse<void>> lockDoor({
    required String unitId,
  }) async {
    const path = '/v1/lockDoor';
    final date = DateTime.now().toUtc().toString();

    final body = {'unitId': unitId};

    final digest =
        'SHA-256=${base64.encode(sha256.convert(utf8.encode(jsonEncode(body))).bytes)}';

    final headers = {
      'x-target-host': 'default.pms',
      'date': date,
      'digest': digest,
      'authorization': await _generateAuthHeader('POST', path, date, digest),
      'content-type': 'application/json',
    };

    final response = await _httpClient.post(
      Uri.parse('$baseUrl$path'),
      headers: headers,
      body: jsonEncode(body),
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to lock door: ${response.statusCode}');
    }

    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return ApiResponse.fromJson(json, (_) => null);
  }
}
