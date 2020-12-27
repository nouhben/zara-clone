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
      overflow: Overflow.visible,
      children: [
        Positioned(
          left: 0,
          right: 0,
          top: 0,
          bottom: SizeConfig.getProportionateScreenHeight(-50),
          child: CategoryOverview(
            overview: _activeCategory == SexCategory.MEN
                ? menCategoryOverviews
                : _activeCategory == SexCategory.WOMEN
                    ? womenCategoryOverviews
                    : kidsCategoryOverviews,
          ),
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
        // Align(
        //   alignment: Alignment.centerRight,
        //   child: Container(
        //     child: CarouselDots(length: 6),
        //     color: kFeedbackColor,
        //     height: 200.0,
        //   ),
        // ),
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
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onVerticalDragDown: (details) {
        print('drag end...');
        setState(() {
          _index = (_index + 1) % widget.overview.length;
        });
      },
      child: SingleChildScrollView(
        child: Stack(
          children: [
            IndexedStack(
              index: _index,
              children: [
                ...List.generate(
                  widget.overview.length,
                  (index) => OverviewBody(overview: widget.overview[index]),
                ),
              ],
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
        ),
      ),
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
              width: SizeConfig.screenWidth * 0.85, // 70%
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
              width: SizeConfig.screenWidth * 0.85, // 70%
              child: Text(
                overview.description.toUpperCase(),
                maxLines: 4,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyText2.copyWith(color: kSecondaryColor),
              ),
            ),
            VerticalSpacing(of: 20),
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
