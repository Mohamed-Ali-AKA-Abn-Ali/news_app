import 'package:dio/dio.dart';

import '../classes/article_model.dart';

class NewService{
  final Dio dio;
  NewService(this.dio);
  Future<List<ArticleModel>?> getNews({required String category}) async {
    try {
      var response = await dio.get(
              'https://newsapi.org/v2/top-headlines?country=us&apiKey=e68c3876c1034ceca9e809a59eafb80a&category=$category');
      Map<String,dynamic> jsonData= response.data;
      List<dynamic> articles=jsonData['articles'];
      List<ArticleModel> articlesList=[];
      for(var article in articles){
            ArticleModel articleModel=ArticleModel(
                image: article['urlToImage'],
                title: article['title'],
                subTitle: article['description'],
                source: Source(id: article['source']['id'],
                    name: article['source']['name']));
            articlesList.add(articleModel);
          }
      print('work well');
      return articlesList;
    } catch (e) {
      return [];
    }
  }
}