import 'package:riverpod/riverpod.dart';
import 'package:tutorial_app/model/person.dart';
import 'package:tutorial_app/repository/person_repository.dart';

// Repository(APIの取得)の状態を管理する
final personProvider = Provider((ref) => Repository());

// 上記を非同期で管理する
final listProvider = FutureProvider<List<Person>>((ref) async {
  final repository = ref.read(personProvider);
  return await repository.fetchList();
});
