import 'package:flutter/material.dart';
import 'package:web_portfolio/ui/screens/home/sections/fifth_row.dart';
import 'package:web_portfolio/ui/screens/home/sections/first_row.dart';
import 'package:web_portfolio/ui/screens/home/sections/footer.dart';
import 'package:web_portfolio/ui/screens/home/sections/fourth_row.dart';
import 'package:web_portfolio/ui/screens/home/sections/job_experiences.dart';
import 'package:web_portfolio/ui/screens/home/sections/second_row.dart';
import 'package:web_portfolio/ui/screens/home/sections/third_row.dart';
import 'package:web_portfolio/ui/widgets/p_button.dart';

import '../../../utils/style/text_style.dart';
class MobilePage extends StatefulWidget {
  const MobilePage({Key? key}) : super(key: key);

  @override
  State<MobilePage> createState() => _MobilePageState();
}

class _MobilePageState extends State<MobilePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children:   const [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 12.0),
                child: PFirstHomeRow(),
              ),
              PSecondHomeRow(),
              PFourthHomeRow(),
              Padding(
                padding: EdgeInsets.only(top: 30.0),
                child: PFifthRow(),
              ),
              SizedBox(height: 40,),
              JobExperiences(),
               Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: Align(
                    alignment: Alignment.center,
                    child: PThirdHomeRow()),
              ),

            ],
          ),
        ));
  }
}
