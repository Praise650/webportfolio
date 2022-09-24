
import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';
import 'package:web_portfolio/ui/responsive.dart';

import '../../../../core/models/job_model.dart';
import '../../../../utils/style/text_style.dart';
class JobExpTile extends StatelessWidget {
  final JobModel model;
  const JobExpTile({
    Key? key,
    required this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ExpansionTileCard(
          expandedColor: Colors.transparent,
          shadowColor: Colors.transparent,
          expandedTextColor: Colors.white,
          baseColor: Colors.transparent,
          leading: Container(
            height: Responsive.isMobile(context)?80: 112,
            width: Responsive.isMobile(context)?80:112,
            decoration: const BoxDecoration(
                color: Colors.grey
            ),
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [Text(model.companyName!, style: lightTextStyle.copyWith(
                fontSize:Responsive.isMobile(context)?20: 32),),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12.0),
                child: Text(model.contractDate ?? '-', style: lightTextStyle,),
              )],
          ),
          subtitle: Text(model.role!, style: lightTextStyle,),
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(model.tasks!, style: lightTextStyle,)),
            )],
        ),
        const Padding(
          padding: EdgeInsets.only(top:67.0, bottom: 41),
          child: Divider(color: Colors.grey,),
        ),
      ],
    );
  }
}
