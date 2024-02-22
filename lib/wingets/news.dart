import 'package:flutter/material.dart';
import 'package:news_app/wingets/vertival_element.dart';

import '../classes/horizontal_class.dart';

class newsObject extends StatelessWidget {
  newsObject({super.key});
  final List<newObject> objects=[
    newObject(source: 'https://10play.com.au/ip/s3/2023/02/08/60d78600050fb510cdccec3e9a1569e5-1216547.jpg?image-profile=image_max&io=landscape',
        bold_text: 'bla bla blaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',
        text: 'vksm;fldmkl;vmfe;ld,vfdlmvdf'),
    newObject(source: 'https://www.siasat.com/wp-content/uploads/2021/05/Palestine-2.jpg',
        bold_text: 'Gaza',
        text: 'text'),
    newObject(source: 'https://www.siasat.com/wp-content/uploads/2021/05/Palestine-2.jpg',
        bold_text: 'Gaza',
        text: 'text'),
    newObject(source: 'https://www.siasat.com/wp-content/uploads/2021/05/Palestine-2.jpg',
        bold_text: 'Gaza',
        text: 'text'),

  ];
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate:SliverChildBuilderDelegate(
            childCount: objects.length,
            (context, index)
        {
          return verticalObject(object: objects[index],);
        },
      )

    );
  }
}
