import 'dart:ui';
import 'dart:developer' as developer;
import 'package:appstoreclonecoding/data/model/today_model.dart';
import 'package:appstoreclonecoding/presenter/style/color_style.dart';
import 'package:appstoreclonecoding/presenter/style/text_style.dart';
import 'package:appstoreclonecoding/presenter/widget/image_views/cached_image.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:palette_generator/palette_generator.dart';

class SpotlightCard extends StatelessWidget {
  const SpotlightCard({
    Key key,
    @required this.item,
  }) : super(key: key);

  final SpotlightToday item;

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
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          margin: EdgeInsets.fromLTRB(20, 0, 0, 20),
                          child:
                              Text(item.title, style: TextStyles.accentText)),
                      AppInfoWidget(item)
                    ],
                  ),
                ),
              ],
            )),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(16)),
            boxShadow: [
              BoxShadow(
                  color: Colors.black38.withOpacity(0.6),
                  spreadRadius: 0,
                  blurRadius: 16,
                  offset: Offset(0, 6))
            ]),
      ),
    );
  }
}

class AppInfoWidget extends StatefulWidget {
  const AppInfoWidget(this.item);

  final SpotlightToday item;

  @override
  _AppInfoWidgetState createState() => _AppInfoWidgetState();
}

class _AppInfoWidgetState extends State<AppInfoWidget> {
  Color backColor = Colors.white;

  @override
  void initState() {
    super.initState();
    setBackgroundColor(CachedNetworkImageProvider(widget.item.imageUrl));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 84,
      child: ClipRect(
        child: Stack(
          children: [
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: Container(
                color: backColor.withOpacity(0.8),
              ),
            ),
            Row(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    margin: const EdgeInsets.only(left: 20),
                    height: 52,
                    width: 52,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: CachedImage(widget.item.appInfo.thumbnailUrl),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        widget.item.appInfo.name,
                        style: TextStyles.smallBoldText.apply(color: Colors.white),
                      ),
                      Text(
                        widget.item.appInfo.description,
                        style: TextStyles.descriptionLightText.apply(color: Colors.white),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                margin: EdgeInsets.only(right: 20),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Container(
                    height: 26,
                    width: 66,
                    color: Colors.white,
                    child: Center(child: Text('받기', style: TextStyles.buttonExtraBoldText.apply(color: ColorStyles.accentColor),)),
                  ),
                ),
              ),
            )
          ],
        ),
      )
    );
  }

  setBackgroundColor(ImageProvider imageProvider) async {
    final PaletteGenerator paletteGenerator =
        await PaletteGenerator.fromImageProvider(imageProvider);

    setState(() {
      backColor = paletteGenerator.dominantColor.color;
    });
  }
}
