import 'package:flutter/material.dart';
import 'package:web_portfolio/ui/responsive.dart';
import 'package:web_portfolio/utils/consts.dart';
import '../../../../utils/style/text_style.dart';
class PThirdHomeRow extends StatelessWidget {
  const PThirdHomeRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if(Responsive.isMobile(context)){
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              'Github',
              style: lightTextStyle,
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            child: Text(
              'Twitter',
              style: lightTextStyle,
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            child: Text(
              'LinkedIn',
              style: lightTextStyle,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      );
    }
    else {
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
}
