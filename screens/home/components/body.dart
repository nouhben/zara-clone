import 'package:flutter/material.dart';
import 'package:zara_clone/components/tabs.dart';
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
    return AnimatedContainer(
      duration: kAnimationDuration,
      curve: Curves.ease,
      width: double.infinity,
      height: SizeConfig.screenHeight,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(
            'https://static.zara.net/photos///contents/mkt/spots/aw20-north-shoes-and-bags-man/subhome-xmedia-51//w/1280/portrait_0.jpg?ts=1608717755963',
          ),
        ),
      ),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: SafeArea(
              child: Tabs(
                onPress: (index) {
                  print('Pressed $index \n');
                  setState(() {
                    _activeCategory = SexCategory.values.elementAt(index);
                    print(_activeCategory);
                  });
                },
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            bottom: -100,
            child: CategoryOverview(category: SexCategory.MEN),
          ),
          Positioned(
            right: 20,
            top: 0,
            bottom: -50,
            child: CarouselDots(length: 7),
          ),
        ],
      ),
    );
  }
}

class CategoryOverview extends StatelessWidget {
  const CategoryOverview({
    Key key,
    @required this.category,
  }) : super(key: key);
  final SexCategory category;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: SizeConfig.screenWidth * 0.7, // 70%
          child: Text(
            'SHOES & BAGS',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headline1.copyWith(
                  color: kSecondaryColor,
                  fontSize: SizeConfig.getProportionateScreenWidth(60),
                  height: 1.2,
                ),
          ),
        ),
        SizedBox(
          width: SizeConfig.screenWidth * 0.7, // 70%
          child: Text(
            'Explore this week\'s latest menswear pieces of the season curated for you\nAutumn Winter Man Collection',
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
    );
  }
}

class CarouselDots extends StatefulWidget {
  final int length;
  const CarouselDots({
    Key key,
    @required this.length,
  }) : super(key: key);

  @override
  _CarouselDotsState createState() => _CarouselDotsState();
}

class _CarouselDotsState extends State<CarouselDots> {
  bool _isVisible = true;
  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: _isVisible ? 1.0 : 0.0,
      duration: Duration(microseconds: 500),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ...List.generate(
            widget.length,
            (index) => CarouselDot(color: kSecondaryColor, isActive: index / widget.length == 0),
          ),
        ],
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
    double size = isActive ? 9.0 : 5.0;
    return Container(
      width: size,
      height: size,
      margin: EdgeInsets.only(bottom: 7),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isActive ? Colors.transparent : this.color,
        border: Border.all(color: this.color, width: 1.0),
      ),
    );
  }
}
