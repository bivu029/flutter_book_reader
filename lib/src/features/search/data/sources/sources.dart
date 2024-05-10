import 'package:bookbazar/src/core/global/all.enitity.dart';
import 'package:bookbazar/src/core/global/fakedata.dart';


abstract class SearchRemoteDataSource {
  Future<Iterable<Book>?> searchbook(String? query);
}

class SearchRemoteImp extends SearchRemoteDataSource {
  @override
  Future<Iterable<Book>?> searchbook(String? query) async {
    final Iterable<Book> option = await FakeAPI.search(query);

    return option;
  }
}

class FakeAPI {
  static List<Book> kOptions = fakebookList;

  // Searches the options, but injects a fake "network" delay.
  static Future<Iterable<Book>> search(String? query) async {
    await Future<void>.delayed(
        const Duration(seconds: 1)); // Fake 1 second delay.
    if (query == '' || query == null) {
      return const Iterable<Book>.empty();
    }
    final data = kOptions.where((element) {
      String title = element.title.toLowerCase();
      return title.contains(query.toLowerCase());
    });

    return data;
  }
}
