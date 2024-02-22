import 'package:flutter/material.dart';

import '../classes/horizontal_class.dart';

class verticalObject extends StatelessWidget {
  verticalObject({super.key, required this.object});
  final newObject object;
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
                image: NetworkImage(object.source),
                fit: BoxFit.cover,
              ),
            ),

            height: 200,
            width: double.infinity,

          ),
          Text(object.bold_text,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          Text(object.text,
            style: const TextStyle(
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
