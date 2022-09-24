import 'package:flutter/material.dart';
import 'package:web_portfolio/ui/responsive.dart';
import 'package:web_portfolio/utils/consts.dart';
import '../../../../utils/style/text_style.dart';
import '../../../widgets/p_button.dart';
import '../web_page.dart';

class PFifthRow extends StatelessWidget {
  const PFifthRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(
          horizontal: Responsive.isMobile(context)?0: 50.0),
      child: Responsive.isMobile(context)?Column(
        children: [
          ExperienceSkills()
        ],
      ):Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: ExperienceSkills(),
          ),
          const SizedBox(
            width: 167,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.45,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.1,
                  child: Column(
                    children: [
                      Text(
                        '2020 -- 2021\nVisual Designer\nSpherical NY',
                        style: lightTextStyle,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 40.0),
                        child: Text(
                          '2020 -- 2021\nVisual Designer\nSpherical NY',
                          style: lightTextStyle,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.1,
                  child: Column(
                    children: [
                      Text(
                        '2020 -- 2021\nVisual Designer\nSpherical NY',
                        style: lightTextStyle,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 40.0),
                        child: Text(
                          '2020 -- 2021\nVisual Designer\nSpherical NY',
                          style: lightTextStyle,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ExperienceSkills extends StatelessWidget {
  const ExperienceSkills({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (Responsive.isMobile(context)) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
              width: Responsive.isMobile(context)?MediaQuery.of(context).size.width*0.4:MediaQuery.of(context).size.width*0.3,
              child: const PButton(buttonTitle: 'Skills')),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Column(
              children: [
                // Text(
                //   Details.exp,
                //   style: lightTextStyle,
                // ),
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: Text(
                    Details.skills,
                    style: lightTextStyle,
                    textAlign: TextAlign.justify,
                  ),
                )
              ],
            ),
          ),
        ],
      );
    }
    else {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const PButton(buttonTitle: 'Experience'),
          SizedBox(
            width: MediaQuery
                .of(context)
                .size
                .width * 0.2,
            child: Column(
              children: [
                Text(
                  Details.exp,
                  style: lightTextStyle,
                  textAlign: TextAlign.justify,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: Text(
                    Details.skills,
                    style: lightTextStyle,
                    textAlign: TextAlign.justify,
                  ),
                )
              ],
            ),
          ),
        ],
      );
    }
  }
}
