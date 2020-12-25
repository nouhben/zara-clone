import 'package:flutter/material.dart';
import 'package:zara_clone/shared/constants.dart';
import 'package:zara_clone/shared/size_config.dart';

class SearchScreen extends StatelessWidget {
  static final String routeName = '/search';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(SearchScreen.routeName.substring(1)),
        iconTheme: IconThemeData(color: kPrimaryColor),
      ),
      backgroundColor: kSecondaryColor,
      body: SizedBox(
        width: double.infinity,
        child: Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                DarkCTAButton(
                  width: 335.0,
                  height: 39.0,
                  label: 'VIEW',
                  opacity: 1.0,
                  onPress: () {},
                  textStyle: Theme.of(context).textTheme.bodyText2,
                ),
                DarkCTAButton(
                  width: 335.0,
                  height: 39.0,
                  label: 'VIEW',
                  opacity: .70,
                  onPress: () {},
                  textStyle: Theme.of(context).textTheme.bodyText2,
                ),
                VerticalSpacing(of: 30),
                LightCTAButton(
                  label: 'CTA ',
                  width: 166.0,
                  height: 39.0,
                  opacity: 1.0,
                  padding: 11.0,
                  onPress: () {},
                  textStyle: Theme.of(context).textTheme.bodyText2,
                ),
                LightCTAButton(
                  label: 'CTA ',
                  width: 166.0,
                  height: 39.0,
                  opacity: .70,
                  padding: 11.0,
                  onPress: () {},
                  textStyle: Theme.of(context).textTheme.bodyText2,
                ),
                VerticalSpacing(of: 30),
                LightCTAButton(
                  label: 'CTA ',
                  width: 122.0,
                  height: 42.0,
                  opacity: 1.0,
                  padding: 11.0,
                  onPress: () {},
                  textStyle: Theme.of(context).textTheme.bodyText2,
                ),
                LightCTAButton(
                  label: 'CTA ',
                  width: 122.0,
                  height: 42.0,
                  opacity: .7,
                  padding: 11.0,
                  onPress: () {},
                  textStyle: Theme.of(context).textTheme.bodyText2,
                ),
                VerticalSpacing(of: 30),
                DarkCTAButton(
                  height: 28.0,
                  width: 122.0,
                  label: 'VIEW',
                  opacity: 1.0,
                  onPress: () {},
                  textStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, height: 1.2),
                ),
                VerticalSpacing(of: 10),
                DarkCTAButton(
                  height: 28.0,
                  width: 122.0,
                  label: 'VIEW',
                  opacity: 0.8,
                  onPress: () {},
                  textStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, height: 1.2),
                ),
                VerticalSpacing(of: 30),
                LightCTAButton(
                  label: 'CTA Unpressed',
                  width: 122.0,
                  height: 28.0,
                  padding: 8.0,
                  onPress: () {},
                  textStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, height: 1.2),
                ),
                LightCTAButton(
                  label: 'CTA Pressed',
                  width: 122.0,
                  height: 28.0,
                  opacity: 0.7,
                  padding: 8.0,
                  onPress: () {},
                  textStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, height: 1.2),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class LightCTAButton extends StatelessWidget {
  const LightCTAButton({
    @required this.height,
    @required this.width,
    @required this.label,
    @required this.onPress,
    @required this.textStyle,
    this.opacity,
    Key key,
    @required this.padding,
  }) : super(key: key);
  final double width, height, padding;
  final String label;
  final GestureTapCallback onPress;
  final TextStyle textStyle;
  final double opacity;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      colorBrightness: Brightness.light,
      clipBehavior: Clip.hardEdge,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.zero,
        side: BorderSide(color: kSecondaryColor.withOpacity(opacity ?? 1.0), width: 2.0),
      ),
      elevation: 0.0,
      disabledElevation: 0.0,
      focusElevation: 0.0,
      hoverElevation: 0.0,
      highlightElevation: 0.0,
      animationDuration: Duration(microseconds: 200),
      onPressed: this.onPress ?? () {},
      splashColor: kPrimaryColor.withOpacity(opacity ?? 1.0),
      height: 28.0 ?? SizeConfig.getProportionateScreenHeight(this.height),
      padding: EdgeInsets.symmetric(vertical: padding),
      color: Colors.transparent,

      ///kSecondaryColor.withOpacity(opacity ?? 1.0),
      child: SizedBox(
        width: SizeConfig.getProportionateScreenWidth(this.width ?? 122.0),
        child: Center(
          child: Text(
            this.label ?? 'CTA',
            style: this.textStyle.copyWith(color: kSecondaryColor.withOpacity(opacity ?? 1.0), fontSize: 18.0),
          ),
        ),
      ),
    );
  }
}

class DarkCTAButton extends StatelessWidget {
  const DarkCTAButton({
    @required this.height,
    @required this.width,
    @required this.label,
    @required this.onPress,
    @required this.textStyle,
    this.opacity,
    Key key,
  }) : super(key: key);
  final double width, height;
  final String label;
  final GestureTapCallback onPress;
  final TextStyle textStyle;
  final double opacity;
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
      onPressed: this.onPress ?? () {},
      splashColor: kPrimaryColor.withOpacity(opacity ?? 1.0),
      height: 28.0 ?? SizeConfig.getProportionateScreenHeight(this.height),
      padding: EdgeInsets.symmetric(vertical: 7),
      color: kPrimaryColor.withOpacity(opacity ?? 1.0),
      child: SizedBox(
        width: SizeConfig.getProportionateScreenWidth(this.width ?? 122.0),
        child: Center(
          child: Text(
            this.label ?? 'CTA',
            style: this.textStyle.copyWith(color: kSecondaryColor.withOpacity(opacity ?? 1.0)),
          ),
        ),
      ),
    );
  }
}
