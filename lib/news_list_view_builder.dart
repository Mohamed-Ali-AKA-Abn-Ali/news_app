import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/services/newService.dart';
import 'package:news_app/wingets/news.dart';

import 'classes/article_model.dart';


class NewsListViewBuilder extends StatelessWidget {
  List<ArticleModel> articles=[];

  NewsListViewBuilder({super.key, required this.category});
  final String category;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: NewService(Dio()).getNews(category: category),
        builder: (context,snapshot){

          if(snapshot.hasData){
            return newsObject(articles: snapshot.data !,);
          }else if(snapshot.hasError){
            return Text("Oops there wan an error");
          }else{
            return SliverToBoxAdapter(child: Center(child: CircularProgressIndicator()));
          }
        });
    // return isloading? SliverToBoxAdapter(child: Center(child: CircularProgressIndicator())):
    // articles.isNotEmpty ? newsObject(articles: articles,):SliverToBoxAdapter(
    //   child: Text("Oops there wan an error"),
    // );
  }
}
