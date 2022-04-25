import 'package:f_web_service_template/data/model/news_item.dart';
import 'package:get/get.dart';

import '../../domain/use_case/news.dart';

class NewsController extends GetxController {
  var _news = <NewsItem>[].obs;
  var _loading = false.obs;
  News news = Get.find();
  // functions getNews() and reset()

  bool get loading => _loading.value;

  List<NewsItem> get newsList => _news;

  Future<String> getNews() async {
    _loading.value = true;
    try {
      var list = await news.getNews();
      _news.value = list;
      _loading.value = false;
      return Future.value('OK');
    } catch (e) {}
    return Future.value('ERROR');
  }

  Future<void> reset() async {
    _news.value = [];
  }
}
