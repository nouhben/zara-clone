import 'package:flutter/material.dart';
import 'package:zara_clone/models/category_overview.dart';
import 'package:zara_clone/shared/constants.dart';
import 'package:zara_clone/shared/size_config.dart';

import 'carousel_dot.dart';
import 'overview_body.dart';

class CategoryOverview extends StatefulWidget {
  const CategoryOverview({
    Key? key,
    required this.overview,
  }) : super(key: key);
  final List<Overview> overview;

  @override
  _CategoryOverviewState createState() => _CategoryOverviewState();
}

class _CategoryOverviewState extends State<CategoryOverview> {
  late int _index;
  late PageController _pageController;
  @override
  void initState() {
    super.initState();
    _index = 0;
    _pageController = PageController(initialPage: 0, viewportFraction: 1.0);
    print('building once');
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PageView.builder(
          controller: _pageController,
          scrollDirection: Axis.vertical,
          itemCount: widget.overview.length,
          onPageChanged: (value) {
            print('re-building page: ${_pageController.page!.round()} ==> value: $value');

            setState(() {
              _index = value;
            });
          },
          itemBuilder: (context, index) => OverviewBody(overview: widget.overview[index]),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: SizedBox(
            height: SizeConfig.screenHeight,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(
                  widget.overview.length,
                  (index) => CarouselDot(isActive: index == _index, color: kSecondaryColor),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
