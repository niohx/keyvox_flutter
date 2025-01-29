# KEYVOX Flutter

KEYVOXのスマートロックAPIを簡単に利用するためのFlutterパッケージです。

## 機能

- 部屋一覧の取得
- 暗証番号の管理（発行・変更・削除）
- 暗証番号履歴の取得
- スマートロックの遠隔操作（施錠・解錠）

## インストール

こちらのリポジトリをクローン後、`pubspec.yaml`に以下を追加してください：

```yaml
dependencies:
  keyvox_flutter:
    path: ../keyvox_flutter ## このパスはリポジトリのパスに合わせてください
```

## 使い方

### 初期化
```dart 
final client = KeyvoxClient(
  apiKey: 'your_api_key',
  secretKey: 'your_secret_key',
);
```

### 部屋一覧の取得

```dart
final response = await client.getUnits();
final units = response.data;
```

### 暗証番号の発行

```dart
final response = await client.createLockPin(unitId: 'your_unit_id');
final lockPin = response.data;
```

### 暗証番号の変更

```dart
final response = await client.updateLockPin(unitId: 'your_unit_id', lockPin: 'your_lock_pin');
final lockPin = response.data;
```

### 暗証番号の削除

```dart
final response = await client.deleteLockPin(unitId: 'your_unit_id');
final lockPin = response.data;
```

### 暗証番号履歴の取得

```dart
final response = await client.getLockHistory(unitId: 'your_unit_id');
final lockHistory = response.data;
```

### スマートロックの遠隔操作



```dart
// 施錠
final response = await client.remoteLock(unitId: 'your_unit_id');
final lockPin = response.data;

// 解錠
final response = await client.remoteUnlock(unitId: 'your_unit_id');
final lockPin = response.data;
```

## エラーハンドリング

APIリクエストが失敗した場合、例外がスローされます。適切に`try-catch`を使用してエラーをハンドリングしてください：

```dart
try {
  final response = await client.getUnits();
} catch (e) {
  print('Error: $e');
}
```

## レスポンス型

全てのAPIレスポンスは`ApiResponse<T>`型でラップされています：

```dart
class ApiResponse<T> {
  final String code;    // レスポンスコード
  final String msg;     // メッセージ
  final T? data;       // レスポンスデータ
}
```

## テスト

パッケージのテストを実行するには：

```bash
flutter test
```

## ライセンス

MIT License

## 関連リンク

- [KEYVOX API Documentation](https://developers.keyvox.co/)
- [パッケージのGitHubリポジトリ](https://github.com/yourusername/keyvox_flutter)

## 注意事項

- このパッケージを使用する前に、KEYVOXのAPI利用登録が必要です。
- APIキーとシークレットキーは適切に管理してください。
- 本番環境での使用前に、十分なテストを行ってください。

