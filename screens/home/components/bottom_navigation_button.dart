import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottomNavigationButton extends StatelessWidget {
  const BottomNavigationButton({
    Key key,
    @required this.icon,
    @required this.onPress,
  }) : super(key: key);
  final String icon;
  final GestureTapCallback onPress;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: this.onPress,
      child: SvgPicture.asset(
        this.icon,
        width: 16.0,
        fit: BoxFit.cover,
        clipBehavior: Clip.antiAlias,
        color: Theme.of(context).textTheme.button.color,
      ),
    );
  }
}
