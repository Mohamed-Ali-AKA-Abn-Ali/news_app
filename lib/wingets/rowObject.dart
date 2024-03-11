import 'package:flutter/material.dart';
import 'package:news_app/classes/temp_class.dart';
import 'package:news_app/wingets/categories_view.dart';

class rowObject extends StatelessWidget {
  rowObject({super.key, required this.model,});
  final avatar model;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context){
          return CategoryView(category: model.text ,);
        }));
      },
      child: Padding(

        padding: const EdgeInsets.symmetric(horizontal:10.0),
        child: Container(
      
          decoration:
          BoxDecoration(
            borderRadius:BorderRadius.circular(10),
            image: DecorationImage(
              image: NetworkImage(model.source),
              fit: BoxFit.cover,
            ),
          ),
      
          height: 140,
          width: 220,
          child: Center(
              child: Text(model.text,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),)),
      
        ),
      ),
    )
    ;
  }
}
