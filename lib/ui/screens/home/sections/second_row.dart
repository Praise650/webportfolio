import 'package:flutter/material.dart';
import '../../../../utils/app_images.dart';
import '../../../../utils/consts.dart';
import '../../../../utils/style/text_style.dart';
import '../../../widgets/p_button.dart';
import '../home_page.dart';
class PSecondHomeRow extends StatelessWidget {
  final void Function()? onPressedScroll;
  const PSecondHomeRow({
    this.onPressedScroll,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.asset(
          AppImages.myImage,
          width: MediaQuery.of(context).size.width * 0.3,
          colorBlendMode: BlendMode.multiply,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.37,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                Details.intro,
                style: boldTextStyle.copyWith(
                  fontSize: 44,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Text(
                  Details.shortDesc,  style: lightTextStyle.copyWith(fontSize: 18),
                ),
              ),
                Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child: SizedBox(
                    width: 250,
                    child: PButton(buttonTitle: 'Know me more', onPressed: onPressedScroll, isIcon: true, icon: Icons.arrow_downward)),
              ),
            ],
          ),
        )
      ],
    );
  }
}
