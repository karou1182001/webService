import 'package:f_web_service_template/ui/controllers/news_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loggy/loggy.dart';

class EmptyNews extends StatelessWidget {
  const EmptyNews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    NewsController newsController = Get.find();
    return Expanded(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ElevatedButton(
          onPressed: () {
            newsController.getNews();
            logInfo("getting news");
          },
          child: const Text("Sport news"),
        ),
      ],
    ));
  }
}
