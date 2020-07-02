import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:appstoreclonecoding/presenter/style/color_style.dart';
import 'package:appstoreclonecoding/presenter/style/text_style.dart';
import 'file:///C:/AndroidStduioProject/appstore_clonecoding/lib/presenter/widget/image_views/cached_profile.dart';

class TitleAppBar extends StatelessWidget {
  final String title;
  final String subtext;
  final String profileUrl;

  TitleAppBar(this.title, { this.subtext='' , this.profileUrl});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if(subtext != null) Text(subtext, style: TextStyles.smallBoldText.apply(color: ColorStyles.primaryLightColor)), //이런 방식 말고는 없을까
        Container(
          margin: EdgeInsets.only(top: 8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title, style: TextStyles.titleText),
              if(profileUrl != null) CachedProfile(profileUrl)
            ],
          ),
        ),
      ],
    );
  }
}
