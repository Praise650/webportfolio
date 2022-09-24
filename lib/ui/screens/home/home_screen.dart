import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:web_portfolio/ui/screens/home/tablet_page.dart';
import 'package:web_portfolio/ui/screens/home/web_page.dart';

import '../../responsive.dart';
import 'home_view_model.dart';
import 'mobile_page.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
        viewModelBuilder: ()=> HomeViewModel(),
        builder: (context, model, _) {
          return  const Scaffold(
              backgroundColor: const Color(0xff080808),
            body: Responsive(
                desktop: PHomePage(),
                mobile: SafeArea(child: MobilePage()),
                tablet: TabletPage()
            ),
          );
        }
    );
  }
}