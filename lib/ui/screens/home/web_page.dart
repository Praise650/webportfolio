import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:web_portfolio/ui/screens/home/sections/fifth_row.dart';
import 'package:web_portfolio/ui/screens/home/sections/first_row.dart';
import 'package:web_portfolio/ui/screens/home/sections/footer.dart';
import 'package:web_portfolio/ui/screens/home/sections/fourth_row.dart';
import 'package:web_portfolio/ui/screens/home/sections/gif_house.dart';
import 'package:web_portfolio/ui/screens/home/sections/job_experiences.dart';
import 'package:web_portfolio/ui/screens/home/sections/second_row.dart';
import 'package:web_portfolio/ui/screens/home/sections/third_row.dart';
import '../../../utils/style/text_style.dart';
import '../../widgets/p_button.dart';
import 'home_view_model.dart';

class PHomePage extends StatefulWidget {
  const PHomePage({Key? key}) : super(key: key);

  @override
  State<PHomePage> createState() => _PHomePageState();
}

class _PHomePageState extends State<PHomePage> {

  ScrollController scrollController = ScrollController(initialScrollOffset: 0);
  double firstOffset = 1400;
  double secOffset = 2200;
  @override
  Widget build(BuildContext context) {

    return ViewModelBuilder<HomeViewModel>.reactive(
      viewModelBuilder: ()=> HomeViewModel(),
      builder: (context, model, _) {
        return Scaffold(
          backgroundColor: const Color(0xff080808),
          body: SingleChildScrollView(
            controller: scrollController,
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 30.0, horizontal: 50),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children:  [
                        const PFirstHomeRow(),
                        PSecondHomeRow(
                          onPressedScroll: (){
                            scrollController.animateTo(firstOffset, duration: const Duration(seconds: 1), curve: Curves.easeInOut);
                          },
                        ),
                        const PThirdHomeRow(),
                      ],
                    ),
                  ),
                ),
                const GifHouse(),
                 const Padding(
                  padding: EdgeInsets.only(top: 120, bottom: 80.0),
                  child: PFourthHomeRow(),
                ),
                const PFifthRow(),
                Padding(
                  padding: const EdgeInsets.only(top: 100.0),
                  child: SizedBox(
                    width: 300,
                    child: PButton(buttonTitle: 'More', isIcon: true, icon: Icons.arrow_downward, onPressed: (){
                      scrollController.animateTo(secOffset, duration: const Duration(seconds: 1), curve: Curves.easeInOut);
                    },),
                  ),
                ),
                const JobExperiences(),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 150.0),
                  child: SizedBox(
                      width: 250,
                      child: PButton(buttonTitle: 'Available For work')),
                ),
                Text('SEND AN EMAIL', style: lightTextStyle.copyWith(fontSize: 80, decoration: TextDecoration.underline),),
                Footer(backToTop: (){
                  scrollController.animateTo(0, duration: const Duration(seconds: 1), curve: Curves.easeInOut);
                },)
              ],
            ),
          ),
        );
      }
    );
  }
}

