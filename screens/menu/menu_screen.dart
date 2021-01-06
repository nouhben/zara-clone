import 'package:flutter/material.dart';
import 'package:zara_clone/components/tabs.dart';
import 'package:zara_clone/models/sex_cagetogry.dart';
import 'package:zara_clone/shared/constants.dart';

import 'components/body.dart';

class MenuScreen extends StatelessWidget {
  static final String routeName = '/menu';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          FlatButton.icon(
            onPressed: () {
              Navigator.of(context).pop();
            },
            padding: EdgeInsets.zero,
            icon: Icon(Icons.close, color: kSecondaryColor.withOpacity(0.8)),
            label: Text(''),
          ),
        ],
        centerTitle: true,
        title: OpenedMenuTabs(),
      ),
      body: Body(),
    );
  }
}

class OpenedMenuTabs extends StatefulWidget {
  @override
  _OpenedMenuTabsState createState() => _OpenedMenuTabsState();
}

class _OpenedMenuTabsState extends State<OpenedMenuTabs> {
  SexCategory _activeCategory;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _activeCategory = SexCategory.MEN;
  }

  @override
  Widget build(BuildContext context) {
    return Tabs(
      onPress: (index) {
        print('Pressed $index \n');
        setState(
          () {
            _activeCategory = SexCategory.values.elementAt(index);
            print(_activeCategory);
          },
        );
      },
    );
  }
}
