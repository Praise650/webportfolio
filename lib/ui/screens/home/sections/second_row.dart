import 'package:flutter/material.dart';
import 'package:web_portfolio/ui/responsive.dart';
import '../../../../utils/app_images.dart';
import '../../../../utils/consts.dart';
import '../../../../utils/style/text_style.dart';
import '../../../widgets/p_button.dart';
import '../web_page.dart';
class PSecondHomeRow extends StatelessWidget {
  final void Function()? onPressedScroll;
  const PSecondHomeRow({
    this.onPressedScroll,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (Responsive.isMobile(context)) {
      return Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15.0),
            child: Image.asset(
              AppImages.myImage,
              width: MediaQuery
                  .of(context)
                  .size
                  .width ,
              colorBlendMode: BlendMode.multiply,
            ),
          ),
          Intro(onPressedScroll: onPressedScroll),
        ],
      );
    }
    else {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            AppImages.myImage,
            width: MediaQuery
                .of(context)
                .size
                .width * 0.3,
            colorBlendMode: BlendMode.multiply,
          ),
          SizedBox(
            width: MediaQuery
                .of(context)
                .size
                .width * 0.37,
            child: Intro(onPressedScroll: onPressedScroll),
          )
        ],
      );
    }
  }
}

class Intro extends StatelessWidget {
  const Intro({
    Key? key,
    required this.onPressedScroll,
  }) : super(key: key);

  final void Function()? onPressedScroll;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          Details.intro,
          style: boldTextStyle.copyWith(
            fontSize: Responsive.isMobile(context)?30: 44,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15.0),
          child: Text(
            Details.shortDesc,  style: lightTextStyle.copyWith(fontSize: 18),
            textAlign: TextAlign.justify,
          ),
        ),
          Padding(
          padding:  EdgeInsets.only(top: 40.0),
          child: SizedBox(
              width: Responsive.isMobile(context)?MediaQuery.of(context).size.width*0.4:250,
              child: PButton(buttonTitle: Responsive.isMobile(context)?'Education':'Know me more',
                  onPressed: onPressedScroll,
                  isIcon: Responsive.isMobile(context)?false: true, icon: Icons.arrow_downward)),
        ),
      ],
    );
  }
}
