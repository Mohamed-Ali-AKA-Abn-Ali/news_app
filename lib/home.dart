import 'package:flutter/material.dart';
import 'package:news_app/wingets/hoeizontal_object.dart';
import 'package:news_app/wingets/news.dart';
import 'package:news_app/wingets/rowObject.dart';
import 'package:news_app/wingets/vertival_element.dart';

class home_page extends StatelessWidget {
  const home_page({super.key});

  @override
  Widget build(BuildContext context) {
    return  Placeholder(
      child: Scaffold(
         appBar: AppBar(
           backgroundColor: Colors.transparent,
             elevation: 0,
             centerTitle: true,
             title:  const Row(
               mainAxisSize:MainAxisSize.min ,
               children: [
                 Text('News',
                   style:
                   TextStyle(
                       color: Colors.black
                   ),
                 ),
                 Text('Cloud',
                   style:
                   TextStyle(
                       color: Colors.yellow,
                   ),


                 ),
               ],
             ),

         ),
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: horizontal_object(),
            ),
            newsObject(),

          ],
        ),

      ),
    );
  }
}
