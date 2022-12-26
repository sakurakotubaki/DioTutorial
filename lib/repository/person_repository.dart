import 'package:tutorial_app/service/api_client.dart';

class Repository {
  final api = ApiClient(); // Dioを使うクラスをインスタンス化.
  dynamic fetchList() async {
    // FutureProviderからfetchListを呼び出す.
    return await api.fetchList();
  }
}
