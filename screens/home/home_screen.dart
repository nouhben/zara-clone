import 'package:flutter/material.dart';
import 'package:zara_clone/shared/constants.dart';
import 'package:zara_clone/shared/routes.dart';
import 'package:zara_clone/shared/size_config.dart';

import 'components/body.dart';
import 'components/bottom_navigation_button.dart';

class HomeScreen extends StatelessWidget {
  static final String routeName = '/home';
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
      extendBodyBehindAppBar: true,
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(bottom: 10),
        width: double.infinity,
        height: SizeConfig.getProportionateScreenWidth(58.0),
        decoration: BoxDecoration(color: kPrimaryColor),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BottomNavigationButton(
              icon: 'assets/icons/search.svg',
              onPress: () {
                _pushScreen(0, context);
              },
            ),
            BottomNavigationButton(
              icon: 'assets/icons/bookmark.svg',
              onPress: () {
                _pushScreen(1, context);
              },
            ),
            HorizontalSpacing(of: 5),
            BottomNavigationButton(
              icon: 'assets/icons/menu.svg',
              onPress: () {
                _pushScreen(2, context);
              },
            ),
            HorizontalSpacing(of: 5),
            BottomNavigationButton(icon: 'assets/icons/user.svg', onPress: () {}),
            BottomNavigationButton(icon: 'assets/icons/cart.svg', onPress: () {}),
          ],
        ),
      ),
    );
  }

  void _pushScreen(int index, BuildContext context) {
    Navigator.of(context).push(
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => screens.entries.elementAt(index).value,
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          var begin = Offset(0.0, 1.0);
          var end = Offset.zero;
          var curve = Curves.ease;

          var tween = Tween(begin: begin, end: end);
          var curvedAnimation = CurvedAnimation(
            parent: animation,
            curve: curve,
          );
          return SlideTransition(
            position: tween.animate(curvedAnimation),
            child: child,
          );
        },
      ),
    );
  }
}
