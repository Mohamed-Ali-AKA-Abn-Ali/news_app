import 'package:flutter/material.dart';
import 'package:news_app/classes/article_model.dart';

import '../classes/horizontal_class.dart';

class verticalObject extends StatelessWidget {
  verticalObject({super.key, required this.articleModel, });
  // final newObject object;
  final ArticleModel articleModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(

            decoration:
            BoxDecoration(
              borderRadius:BorderRadius.circular(10),
              image: DecorationImage(
                image: NetworkImage(articleModel.image??''),
                fit: BoxFit.cover,
              ),
            ),

            height: 200,
            width: double.infinity,

          ),
          Text(articleModel.title??'Title',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          Text(articleModel.subTitle??'',
            style: const TextStyle(
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
