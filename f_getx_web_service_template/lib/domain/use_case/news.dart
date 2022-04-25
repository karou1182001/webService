import 'package:f_web_service_template/domain/repositories/data_repository.dart';
import 'package:get/get.dart';

import '../../data/model/news_item.dart';

class News {
  DataRepository _dataRepository = Get.find();

  Future<List<NewsItem>> getNews() async =>
      await _dataRepository.getItems("sports");
}
