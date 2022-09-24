import 'package:flutter/material.dart';
import 'package:web_portfolio/ui/responsive.dart';
import 'package:web_portfolio/ui/widgets/scroll_view.dart';
import 'package:web_portfolio/utils/consts.dart';
import '../../../../utils/style/text_style.dart';
class PFourthHomeRow extends StatelessWidget {
  final Function(Offset offset)? offset;
  const PFourthHomeRow({
    this.offset,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBoxOffset(
      offset: offset,
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: Responsive.isMobile(context)?0: 50.0),
        child: Responsive.isMobile(context)?Padding(
          padding: const EdgeInsets.only(top: 15.0),
          child: Text(
            Details.education,
            style: lightTextStyle.copyWith(
                fontSize: Responsive.isMobile(context)?16:40),
            textAlign: TextAlign.justify,
          ),
        ):Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.2,
                  child: Text(
                    Details.education,
                    textAlign: TextAlign.justify,
                    style: lightTextStyle.copyWith(fontSize: 40),
                  )),
            ),
            SizedBox(
              width: 80,
            ),
            Expanded(
              child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.37,
                  child: Text(
                    Details.experience,
                    textAlign: TextAlign.justify,
                    style: lightTextStyle.copyWith(fontSize: 26),
                  )),
            )
          ],
        ),
      ),
    );
  }
}