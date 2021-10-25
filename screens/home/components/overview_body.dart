import 'package:flutter/material.dart';
import 'package:zara_clone/components/light_cta_button.dart';
import 'package:zara_clone/models/category_overview.dart';
import 'package:zara_clone/shared/constants.dart';
import 'package:zara_clone/shared/size_config.dart';

class OverviewBody extends StatelessWidget {
  const OverviewBody({
    Key? key,
    required this.overview,
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
              width: SizeConfig.screenWidth! * 0.9, // 70%
              child: Text(
                overview.title.toUpperCase(),
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline1!.copyWith(
                      color: kSecondaryColor,
                      fontSize: SizeConfig.getProportionateScreenWidth(50),
                      height: 1.2,
                    ),
              ),
            ),
            SizedBox(
              width: SizeConfig.screenWidth! * 0.9, // 70%
              child: Text(
                overview.description.toUpperCase(),
                maxLines: 4,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyText2!.copyWith(color: kSecondaryColor),
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
              textStyle: Theme.of(context).textTheme.bodyText2!.copyWith(height: 1),
            ),
          ],
        ),
      ),
    );
  }
}
