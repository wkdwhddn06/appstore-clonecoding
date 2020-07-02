import 'package:appstoreclonecoding/data/model/today_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'today_cards/plain_card.dart';
import 'today_cards/spotlight_card.dart';

class TodayListItem extends StatelessWidget {
  final Today item;

  const TodayListItem(this.item);

  @override
  Widget build(BuildContext context) {
    switch (item.type) {
      case Today.PLAIN:
        return PlainCard(item: item);
      case Today.SPOTLIGHT:
        return SpotlightCard(item: item);
    }
  }
}
