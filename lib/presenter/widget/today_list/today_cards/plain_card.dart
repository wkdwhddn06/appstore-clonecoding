import 'package:appstoreclonecoding/data/model/today_model.dart';
import 'package:appstoreclonecoding/presenter/style/text_style.dart';
import 'package:appstoreclonecoding/presenter/widget/image_views/cached_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlainCard extends StatelessWidget {
  const PlainCard({
    Key key,
    @required this.item,
  }) : super(key: key);

  final PlainToday item;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 420,
      child: Container(
        child: ClipRRect(
            borderRadius: BorderRadius.circular(16.0),
            child: Stack(
              children: [
                CachedImage(item.imageUrl),
                Container(
                    margin: EdgeInsets.fromLTRB(24, 24, 0, 0),
                    child: _CardTitle(item: item)),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    margin: EdgeInsets.all(24),
                    child: Text(item.description, style: TextStyles.smallLightText.apply(color: Colors.white),),
                  ),
                )
              ],
            )),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(16)),
            boxShadow: [
              BoxShadow(
                  color: Colors.black38.withOpacity(0.6),
                  spreadRadius: 0,
                  blurRadius: 16,
                  offset: Offset(0, 8))
            ]),
      ),
    );
  }
}

class _CardTitle extends StatelessWidget {
  const _CardTitle({
    Key key,
    @required this.item,
  }) : super(key: key);

  final PlainToday item;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (item.category != null)
          Text(item.category,
              style: TextStyles.smallBoldText
                  .apply(color: Colors.white.withOpacity(0.8))),
        Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: Text(item.title,
              style: TextStyles.mediumHeavyText.apply(color: Colors.white)),
        ),
      ],
    );
  }
}
