import 'package:appstoreclonecoding/data/model/app_model.dart';

class Today {
  final String id;
  final String title;
  final int type;

  static const int PLAIN = 0;
  static const int SPOTLIGHT = 1;
  static const int ARTICLE = 2;

  const Today(this.title, this.type, {this.id});
}

class PlainToday extends Today{
  final String imageUrl;
  final String title;
  final String category;
  final String description;

  const PlainToday(this.imageUrl, this.title, this.category, {this.description}) : super(title, Today.PLAIN);
}

class SpotlightToday extends Today{
  final String imageUrl;
  final String title;
  final AppInfo appInfo;

  const SpotlightToday(this.imageUrl, this.title, this.appInfo) : super(title, Today.SPOTLIGHT);
}

class ArticleToday extends Today{
  final String imageUrl;
  final String title;
  final String subTitle;
  final String accentText;

  const ArticleToday(this.imageUrl, {this.title, this.subTitle, this.accentText}) : super(title, Today.ARTICLE);
}
