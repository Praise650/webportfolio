import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:web_portfolio/ui/responsive.dart';

import '../../../widgets/p_button.dart';
import '../../../widgets/scroll_view.dart';
import '../home_view_model.dart';
import 'job_exp_tile.dart';
class JobExperiences extends ViewModelWidget<HomeViewModel> {
  final Function(Offset offset)? offset;

  const JobExperiences({
    this.offset,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, viewModel) {

      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (Responsive.isMobile(context))
          SizedBox(
              width: MediaQuery
                  .of(context)
                  .size
                  .width * 0.5,
              child: const PButton(buttonTitle: 'Experience')),
          Padding(
            padding: EdgeInsets.only(
                top: Responsive.isMobile(context) ? 20 : 161.0,
                left: Responsive.isMobile(context) ? 0 : 50,
                right: Responsive.isMobile(context) ? 0 : 50),
            child: GetBoxOffset(
              offset: offset,
              child: Column(
                children: List.generate(viewModel.jobExp.length, (index) {
                  return Column(
                    children: [
                      if(!Responsive.isMobile(context) && index == 0)
                        const Padding(
                          padding: EdgeInsets.only(bottom: 41.0),
                          child: Divider(color: Colors.white,),
                        ),
                      JobExpTile(model: viewModel.jobExp[index]),
                    ],
                  );
                }),
              ),
            ),
          )
        ],
      );
    }
  }





