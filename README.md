# DioTutorial

- APIからデータを取得する学習教材
  - ちょっとレベル高めに作りました.
    - 状態管理はriverpodを使用.
    - HTTPはDioを使用.
    - Listで使うPersonクラスを作成する.
    - モデルとなるクラスはFreezedで作成する.
    - リストをTapすると詳細ページを表示する.
    
気になった点?
riverpodが以下のバージョンでないとProviderScopeのエラーを解消できなかった!
なぜかimportできない?

```
flutter_riverpod: ^2.1.1
```

## Freezedで使用するパッケージ
```
$ flutter pub add freezed_annotation
$ flutter pub add build_runner --dev
$ flutter pub add freezed --dev
$ flutter pub add json_serializable --dev
```

Freezedのコマンドを実行する.
```
$ flutter pub run build_runner watch --delete-conflicting-outputs
```