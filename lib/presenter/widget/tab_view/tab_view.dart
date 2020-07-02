import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TabView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 70,
          child: ClipRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: Container(
                color: Colors.white.withOpacity(0.9),
              ),
            ),
          ),
        ),
//        Row(
//          children: [
//            Column(
//              children: [
//                Icon(CupertinoIcons.news),
//                Text('Today')
//              ],
//            )
//          ],
//        )
      ],
    );
  }
}
