import 'package:f_web_service_template/ui/controllers/news_controller.dart';
import 'package:f_web_service_template/ui/widgets/list_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoadedView extends StatelessWidget {
  const LoadedView({Key? key}) : super(key: key);

  Future _refreshList(BuildContext context) async {
    NewsController newsController = Get.find();
    newsController.getNews();
  }

  @override
  Widget build(BuildContext context) {
    List<ListItem> items = [];
    NewsController newsController = Get.find();

    for (var news in newsController.newsList) {
      items.add(ListItem(news));
    }

    return Expanded(
      child: GestureDetector(
        onHorizontalDragEnd: (details) {
          newsController.reset();
        },
        child: RefreshIndicator(
          child: ListView(
            children: items,
          ),
          onRefresh: () => _refreshList(context),
        ),
      ),
    );
  }
}
