import 'package:flutter/material.dart';
import 'package:zara_clone/components/tabs.dart';
import 'package:zara_clone/models/category_overview.dart';
import 'package:zara_clone/models/sex_cagetogry.dart';
import 'package:zara_clone/shared/size_config.dart';

import 'category_overview.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late SexCategory _activeCategory;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
    _activeCategory = SexCategory.MEN;
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IndexedStack(
          index: _activeCategory.index,
          children: [
            Positioned(
              left: 0,
              right: 0,
              top: 0,
              bottom: SizeConfig.getProportionateScreenHeight(-50),
              child: CategoryOverview(overview: menCategoryOverviews),
            ),
            Positioned(
              left: 0,
              right: 0,
              top: 0,
              bottom: SizeConfig.getProportionateScreenHeight(-50),
              child: CategoryOverview(overview: womenCategoryOverviews),
            ),
            Positioned(
              left: 0,
              right: 0,
              top: 0,
              bottom: SizeConfig.getProportionateScreenHeight(-50),
              child: CategoryOverview(overview: kidsCategoryOverviews),
            ),
          ],
        ),
        Align(
          alignment: Alignment.topCenter,
          child: SafeArea(
            child: Tabs(
              onPress: (index) {
                print('Pressed $index \n');
                setState(
                  () {
                    _activeCategory = SexCategory.values.elementAt(index);
                    print(_activeCategory);
                  },
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
