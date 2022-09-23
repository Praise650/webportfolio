import 'package:flutter/material.dart';
import 'package:web_portfolio/utils/consts.dart';
import '../../../../utils/style/text_style.dart';
class PThirdHomeRow extends StatelessWidget {
  const PThirdHomeRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
       SizedBox(),
        SizedBox(
          width: MediaQuery.of(context).size.width*0.45,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    'Github',
                    style: lightTextStyle,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Text(
                      'Twitter',
                      style: lightTextStyle,
                    ),
                  ),
                  Text(
                    'LinkedIn',
                    style: lightTextStyle,
                  ),
                ],
              ),
              Text(
                Details.email,
                style: lightTextStyle,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
