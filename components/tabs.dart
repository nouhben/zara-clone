import 'package:flutter/material.dart';
import 'package:zara_clone/shared/constants.dart';
import 'package:zara_clone/shared/size_config.dart';

class Tabs extends StatelessWidget {
  const Tabs({
    Key key,
    @required this.onPress,
  }) : super(key: key);

  final ValueChanged<int> onPress;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: SizeConfig.screenWidth * 0.8, // 80%
      child: DefaultTabController(
        length: 3,
        initialIndex: 0,
        child: TabBar(
          indicatorColor: Colors.white,
          indicatorSize: TabBarIndicatorSize.label,
          indicatorWeight: 1.0,
          labelPadding: EdgeInsets.zero,
          indicatorPadding: EdgeInsets.zero,
          labelStyle: Theme.of(context).textTheme.bodyText2,
          labelColor: kSecondaryColor,
          unselectedLabelColor: kSecondaryColor.withOpacity(0.7),
          onTap: onPress,
          tabs: [
            Tab(text: "MEN"),
            Tab(text: "WOMEN"),
            Tab(text: "KIDS"),
          ],
        ),
      ),
    );
  }
}
