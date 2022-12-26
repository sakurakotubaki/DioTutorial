import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tutorial_app/view/detail.dart';
import 'package:tutorial_app/view_model%20/person_provider.dart';

class PersonPage extends ConsumerWidget {
  const PersonPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // FutureProviderを読み取る（取得できる型は `AsyncValue<T>`）
    final config = ref.watch(listProvider);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('DioDemoApp'),
      ),
      // AsyncValue は `.when` を使ってハンドリングする
      body: config.when(
          // 非同期処理中は `loading` で指定したWidgetが表示される
          loading: () => const CircularProgressIndicator(),
          // エラーが発生した場合に表示されるWidgetを指定
          error: (error, stack) => Text('Error: $error'),
          // 非同期処理が完了すると、取得した `config` が `data` で使用できる
          data: (config) {
            return ListView.builder(
                itemCount: config.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(config[index].name!),
                    onTap: () {
                      // リストをタップすると詳細画面へ遷移する設定
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  Detail(person: config[index])));
                    },
                  );
                });
          }),
    );
  }
}
