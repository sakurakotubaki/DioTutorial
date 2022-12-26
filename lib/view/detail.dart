import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tutorial_app/model/person.dart';

class Detail extends ConsumerWidget {
  // ListView.builderから値を受け取れるように、コンストラクターを定義する
  const Detail({super.key, required this.person});
  // 受け取った値を保存する変数を作る
  final Person person;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('詳細ページ'),
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          // 受け取った値を保存した変数を使って、Userクラスのプロパティを表示できるようにする
          Container(
            padding: const EdgeInsets.only(left: 20),
            alignment: Alignment.topLeft,
            child: Row(
              children: [
                Text('id: '),
                Text(
                  '${person.id}',
                  style: TextStyle(fontSize: 20).copyWith(color: Colors.green),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 20),
            alignment: Alignment.topLeft,
            child: Row(
              children: [
                Text('名前: '),
                Text(
                  '${person.name}',
                  style: TextStyle(fontSize: 20).copyWith(color: Colors.blue),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 20),
            alignment: Alignment.topLeft,
            child: Row(
              children: [
                Text('ユーザー名: '),
                Text(
                  '${person.username}',
                  style: TextStyle(fontSize: 20).copyWith(color: Colors.cyan),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 10, left: 20),
            alignment: Alignment.topLeft,
            child: Row(
              children: [
                Text('メールアドレス: '),
                Text(
                  '${person.email}',
                  style: TextStyle(fontSize: 20)
                      .copyWith(color: Colors.pinkAccent),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
