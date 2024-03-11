import 'package:flutter/material.dart';
import 'package:news_app/wingets/rowObject.dart';

import '../classes/temp_class.dart';

class horizontal_object extends StatelessWidget {
  horizontal_object({super.key});
  final List<avatar> objects =[
    avatar(
        source: 'https://standards.ieee.org/wp-content/uploads/2021/12/Connected-technologies-1920x1080-1.jpg',
        text: 'Technology',
    ),
    avatar(
        source: 'https://static1.squarespace.com/static/60f82c9e5264b376cff8ccbc/t/60f82db05264b376cff8eeda/1598880353687/Fifa_banner_Trends+in+Professional+Football_02.jpg?format=1500w',
        text: 'Sports'),
    avatar(
        source: 'https://exeedcollege.com/wp-content/uploads/2022/05/Biggest-Business-Trends-in-2022-2-e1651733586811.jpg',
        text: 'Business'),
    avatar(
        source: 'https://img.freepik.com/free-vector/realistic-dynamic-fog-background_23-2149111508.jpg',
        text: 'Entertainment'),
    avatar(
        source: 'https://media.istockphoto.com/id/1400818679/photo/health-network-connection-background-loopable.webp?b=1&s=170667a&w=0&k=20&c=TuQ5HxzBpgdpLghgfZc2ia5FSmsdhUllEsILmsUpqL4=',
        text: 'Health'),

  ];
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 140,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: objects.length,
        itemBuilder: ( context,  index) {
          return  rowObject(model:objects[index] ,);

        },



      ),
    );
  }
}
