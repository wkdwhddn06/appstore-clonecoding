import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:shimmer/shimmer.dart';
import 'package:cached_network_image/cached_network_image.dart';


class CachedProfile extends StatelessWidget {
  final String url;

  const CachedProfile(this.url);

  @override
  Widget build(BuildContext context) {
    return ClipOval(
        child: CachedNetworkImage(
            placeholder: (context, url) => SizedBox(
              width: 34,
              height: 34,
              child: Shimmer.fromColors(
                baseColor: Colors.grey[300],
                highlightColor: Colors.grey[200],
                child: Container(decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.white),),
              ),
            ),
            imageUrl: url,
            width: 34,
            height: 34,
            fit: BoxFit.cover
        )
    );
  }
}
