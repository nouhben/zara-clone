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
            'https://static.zara.net/photos///contents/mkt/spots/aw20-north-collection-man/subhome-xmedia-50//w/1440/portrait_0.jpg?ts=1607370782079',
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
                },
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            bottom: -100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'NEW IN',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headline1.copyWith(color: kSecondaryColor),
                ),
                Text(
                  'kdkajshdk ksdjhkdsfjh adskjhkjd fsdkjh\nksdjhkdsfjh adskjhkjd fsdkjh\nksdjhkdsfjh adskjhkjd',
                  maxLines: 4,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyText1.copyWith(color: kSecondaryColor),
                ),
                VerticalSpacing(of: 20),
                LightCTAButton(
                  label: 'VIEW ',
                  width: 122.0,
                  height: 28.0,
                  opacity: .7,
                  padding: 8.0,
                  onPress: () {},
                  textStyle: Theme.of(context).textTheme.bodyText1.copyWith(height: 1),
                ),
              ],
            ),
          ),
          Positioned(
            right: 20,
            top: 0,
            bottom: -50,
            child: FadeTransition(
              opacity: _controller,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CarouselDot(size: 9.0, color: kSecondaryColor, isActive: true),
                  CarouselDot(size: 5.0, color: kSecondaryColor, isActive: false),
                  CarouselDot(size: 5.0, color: kSecondaryColor, isActive: false),
                  CarouselDot(size: 5.0, color: kSecondaryColor, isActive: false),
                  CarouselDot(size: 5.0, color: kSecondaryColor, isActive: false),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CarouselDot extends StatelessWidget {
  const CarouselDot({
    Key key,
    this.size,
    this.isActive,
    this.color,
  }) : super(key: key);
  final double size;
  final bool isActive;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: size ?? 5.0,
      height: size ?? 5.0,
      margin: EdgeInsets.only(bottom: 7),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isActive ? Colors.transparent : this.color,
        border: Border.all(color: this.color, width: 1.0),
      ),
    );
  }
}
