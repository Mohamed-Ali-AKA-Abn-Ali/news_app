import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/services/newService.dart';
import 'package:news_app/wingets/vertival_element.dart';

import '../classes/article_model.dart';
import '../classes/horizontal_class.dart';


class newsObject extends StatelessWidget{
  // final List<newObject> objects=[
  final List<ArticleModel> articles;

  const newsObject({super.key, required this.articles});


  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate:SliverChildBuilderDelegate(
            childCount: articles.length,
            (context, index)
        {
          return verticalObject( articleModel: articles[index],);
        },
      )

    );
  }
}
