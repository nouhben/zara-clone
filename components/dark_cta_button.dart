import 'package:flutter/material.dart';
import 'package:zara_clone/shared/constants.dart';
import 'package:zara_clone/shared/size_config.dart';

class DarkCTAButton extends StatelessWidget {
  const DarkCTAButton({
    required this.height,
    required this.width,
    required this.label,
    required this.onPress,
    required this.textStyle,
    this.opacity,
    Key? key,
  }) : super(key: key);
  final double width, height;
  final String label;
  final GestureTapCallback onPress;
  final TextStyle textStyle;
  final double? opacity;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      colorBrightness: Brightness.light,
      clipBehavior: Clip.hardEdge,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
      elevation: 0.0,
      disabledElevation: 0.0,
      focusElevation: 0.0,
      hoverElevation: 0.0,
      highlightElevation: 0.0,
      animationDuration: Duration(microseconds: 200),
      onPressed: this.onPress,
      splashColor: kPrimaryColor.withOpacity(opacity ?? 1.0),
      height: 28.0,
      padding: EdgeInsets.symmetric(vertical: 7),
      color: kPrimaryColor.withOpacity(opacity ?? 1.0),
      child: SizedBox(
        width: SizeConfig.getProportionateScreenWidth(this.width),
        child: Center(
          child: Text(
            this.label,
            style: this.textStyle.copyWith(color: kSecondaryColor.withOpacity(opacity ?? 1.0)),
          ),
        ),
      ),
    );
  }
}
