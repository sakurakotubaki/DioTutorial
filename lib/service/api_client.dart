import 'package:dio/dio.dart';
import 'package:tutorial_app/model/person.dart';

// DioでAPIからデータを取得するメソッドを使うクラスを定義.
class ApiClient {
  Future<List<Person>?> fetchList() async {
    // PersonクラスをListの型に使う.
    final dio = Dio(); // Dioクラスをインスタンス化.
    const url = 'https://jsonplaceholder.typicode.com/users'; // endpointを指定.
    final response = await dio.get(url); // endpointをDioで取得.

    if (response.statusCode == 200) {
      // statusCodeが200だったらデータを取得.
      try {
        final data = response.data as List<dynamic>; // List<dynamic>にcastする.
        final list =
            data.map((e) => Person.fromJson(e)).toList(); // Listをmapで新しく生成する.
        return list; // mapで新しく生成したListを戻り値として返す.
      } catch (e) {
        print('例外処理が発生: $e');
        throw e;
      }
    }
  }
}
