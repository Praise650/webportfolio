import 'package:flutter/material.dart';
import 'package:web_portfolio/style/text_style.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.black,
          child: Stack(
            children: [],
          ),
        ),
        Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text('Frontend Developer', style: textStyle,),
            )),

        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Column(
              children: [
                Text('FALANA', style: textStyle,),
                Text('DOLAPO', style: textStyle,),
              ],
            ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RotatedBox(
                    quarterTurns: 1,
                      child: Text('About', style: textStyle,)),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 50.0),
                    child: RotatedBox(
                        quarterTurns: 1,
                        child: Text('Projects', style: textStyle)),
                  ),
                  RotatedBox(
                      quarterTurns: 1,
                      child: Text('Contact', style: textStyle)),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(Icons.person, color: Colors.white,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Icon(Icons.person, color: Colors.white),
                  ),
                  Icon(Icons.person, color: Colors.white),
                ],
              )
            ],
          ),
        )
      ],
    ),
    );
  }
}
