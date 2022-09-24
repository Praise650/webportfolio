import 'package:flutter/material.dart';
import 'package:web_portfolio/ui/responsive.dart';
import '../../../../utils/consts.dart';
import '../../../../utils/style/text_style.dart';
import '../../../widgets/p_button.dart';
import '../web_page.dart';
class PFirstHomeRow extends StatelessWidget {
  const PFirstHomeRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (Responsive.isMobile(context)) {
      return Text(Details.name, style: lightTextStyle.copyWith(fontSize: 19),);
    }
    else {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            Details.name,
            style: lightTextStyle.copyWith(fontSize: 19),
          ),
          Row(
            children: [
              Icon(
                Icons.circle,
                color: Colors.red,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  'Currently available for freelance projects',
                  style: lightTextStyle,
                ),
              ),
            ],
          ),
          const PButton(buttonTitle: 'Let\'s talk'),
        ],
      );
    }
  }
}