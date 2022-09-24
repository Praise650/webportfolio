import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_portfolio/ui/responsive.dart';
import '../../../../utils/consts.dart';
import '../../../../utils/style/text_style.dart';
class Footer extends StatelessWidget {
  final void Function()? backToTop;
  const Footer({
    this.backToTop,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(
          horizontal: Responsive.isMobile(context)?0: 50.0),
      child: Padding(
        padding: const EdgeInsets.only(top: 200.0, bottom: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(Details().dateTime, style: lightTextStyle,),
            Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Center(child: IconButton(onPressed: backToTop, icon: Icon(Icons.arrow_upward, color: Colors.white, size: 30,))),
                )),
            Text('DESIGNED BY\nOkediji Joshua', style: lightTextStyle,),
          ],
        ),
      ),
    );
  }
}