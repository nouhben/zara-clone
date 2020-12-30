import 'package:flutter/material.dart';
import 'package:zara_clone/components/tabs.dart';
import 'package:zara_clone/models/category_overview.dart';
import 'package:zara_clone/screens/search/search_screen.dart';
import 'package:zara_clone/shared/constants.dart';
import 'package:zara_clone/shared/size_config.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

enum SexCategory { MEN, WOMEN, KIDS }

class _BodyState extends State<Body> with SingleTickerProviderStateMixin {
  AnimationController _controller;
  SexCategory _activeCategory;
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

class CategoryOverview extends StatefulWidget {
  const CategoryOverview({
    Key key,
    @required this.overview,
  }) : super(key: key);
  final List<Overview> overview;

  @override
  _CategoryOverviewState createState() => _CategoryOverviewState();
}

class _CategoryOverviewState extends State<CategoryOverview> {
  int _index;
  PageController _pageController;
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
            print('re-building page: ${_pageController.page.round()} ==> value: $value');

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

class OverviewBody extends StatelessWidget {
  const OverviewBody({
    Key key,
    @required this.overview,
  }) : super(key: key);

  final Overview overview;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: SizeConfig.screenWidth,
        height: SizeConfig.screenHeight,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(overview.image),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: SizeConfig.screenWidth * 0.9, // 70%
              child: Text(
                overview.title.toUpperCase(),
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline1.copyWith(
                      color: kSecondaryColor,
                      fontSize: SizeConfig.getProportionateScreenWidth(50),
                      height: 1.2,
                    ),
              ),
            ),
            SizedBox(
              width: SizeConfig.screenWidth * 0.9, // 70%
              child: Text(
                overview.description.toUpperCase(),
                maxLines: 4,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyText2.copyWith(color: kSecondaryColor),
              ),
            ),
            VerticalSpacing(
              of: SizeConfig.getProportionateScreenWidth(
                (overview.title.isEmpty && this.overview.description.isEmpty) ? 150 : 40,
              ),
            ),
            LightCTAButton(
              label: 'VIEW ',
              width: 136.0,
              height: 28.0,
              opacity: 1.0,
              padding: 12.0,
              onPress: () {},
              textStyle: Theme.of(context).textTheme.bodyText2.copyWith(height: 1),
            ),
          ],
        ),
      ),
    );
  }
}

class CarouselDot extends StatelessWidget {
  const CarouselDot({
    Key key,
    this.isActive,
    this.color,
  }) : super(key: key);

  final bool isActive;
  final Color color;
  @override
  Widget build(BuildContext context) {
    double size = isActive ? 10.0 : 5.0;
    return Container(
      width: size,
      height: size,
      margin: EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isActive ? Colors.transparent : this.color,
        border: Border.all(color: this.color, width: 1.0),
      ),
    );
  }
}
