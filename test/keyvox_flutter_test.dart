import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:keyvox_flutter/keyvox_flutter.dart';

void main() {
  group('KeyvoxClient', () {
    late KeyvoxClient client;
    late MockClient mockClient;

    setUp(() {
      mockClient = MockClient((request) async {
        if (request.url.path == '/v1/getUnits') {
          return http.Response(
            '''
            {
              "code": "0",
              "msg": "success",
              "data": [
                {
                  "unitId": "5de092a8ef16f9512c1f1fff",
                  "unitName": "1101室",
                  "lockIds": "5bdfdd421bca968a774ec18a,5bd80fcd31bca24fc30e1eab",
                  "placeName": "内幸町ホテル",
                  "unitState": "I",
                  "unitType": "シングル",
                  "placeType": "facility"
                }
              ]
            }
            ''',
            200,
          );
        }
        return http.Response('Not found', 404);
      });

      client = KeyvoxClient(
        apiKey: 'test_api_key',
        secretKey: 'test_secret_key',
        httpClient: mockClient,
      );
    });

    test('getUnits returns list of units', () async {
      final response = await client.getUnits();

      expect(response.code, equals('0'));
      expect(response.msg, equals('success'));
      expect(response.data, isNotNull);
      expect(response.data!.length, equals(1));

      final unit = response.data!.first;
      expect(unit.unitId, equals('5de092a8ef16f9512c1f1fff'));
      expect(unit.unitName, equals('1101室'));
    });
  });
}
