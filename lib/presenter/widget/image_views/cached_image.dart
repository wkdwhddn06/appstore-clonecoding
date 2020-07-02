import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CachedImage extends StatelessWidget {
  const CachedImage(this.url);
  final String url;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
        placeholder: (context, url) => SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Shimmer.fromColors(
            baseColor: Colors.grey[300],
            highlightColor: Colors.grey[200],
            child: Container(
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle, color: Colors.white),
            ),
          ),
        ),
        imageUrl: url,
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.cover);
  }
}
