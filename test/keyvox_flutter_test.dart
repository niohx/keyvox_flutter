import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:keyvox_flutter/keyvox_flutter.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'keyvox_flutter_test.mocks.dart';

@GenerateMocks([http.Client])
void main() {
  group('KeyvoxClient', () {
    test('getUnits returns list of units', () async {
      final client = MockClient();
      final keyvoxClient = KeyvoxClient(
        apiKey: 'test_api_key',
        secretKey: 'test_secret_key',
        httpClient: client,
      );

      final mockResponse = '''
      {
        "code": "0",
        "msg": "success",
        "data": [
          {
            "unitId": "unit001",
            "placeName": "テストホテル",
            "unitName": "101",
            "unitType": "シングル",
            "unitState": "D",
            "lockIds": "LOCK001,LOCK002",
            "placeType": "facility"
          },
          {
            "unitId": "unit002",
            "placeName": "テストホテル",
            "unitName": "102",
            "unitType": "ダブル",
            "unitState": "I",
            "lockIds": "LOCK003,LOCK004",
            "placeType": "facility"
          },
          {
            "unitId": "unit003",
            "placeName": "テストホテル",
            "unitName": "エントランス",
            "unitState": "I",
            "placeType": "facility"
          }
        ]
      }
      ''';

      when(client.get(
        Uri.parse('https://api.keyvox.cn/v1/getUnits'),
        headers: anyNamed('headers'),
      )).thenAnswer((_) async => http.Response(mockResponse, 200));

      final units = await keyvoxClient.getUnits();

      expect(units.code, '0');
      expect(units.msg, 'success');
      expect(units.data!.length, 3);
      expect(units.data![0].unitId, 'unit001');
      expect(units.data![0].unitName, '101');
      expect(units.data![0].lockIds, ['LOCK001', 'LOCK002']);
      expect(units.data![2].unitName, 'エントランス');
      expect(units.data![2].lockIds, null);
    });
  });
}
