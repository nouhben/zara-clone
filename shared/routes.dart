import 'package:flutter/widgets.dart';
import 'package:zara_clone/screens/bookmark/bookmark_screen.dart';
import 'package:zara_clone/screens/home/home_screen.dart';
import 'package:zara_clone/screens/search/search_screen.dart';

final Map<String, WidgetBuilder> routes = {
  '/': (context) => HomeScreen(),
  SearchScreen.routeName: (context) => SearchScreen(),
  BookmarkScreen.routeName: (context) => BookmarkScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
};
final Map<String, Widget> screens = {
  SearchScreen.routeName: SearchScreen(),
  BookmarkScreen.routeName: BookmarkScreen(),
  HomeScreen.routeName: HomeScreen(),
};

final Map<int, String> navigationRoutes = {
  0: SearchScreen.routeName,
  1: BookmarkScreen.routeName,
  2: HomeScreen.routeName,
  3: HomeScreen.routeName,
  3: HomeScreen.routeName,
};
