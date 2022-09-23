import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

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
    return Padding(
      padding: const EdgeInsets.only(top:161.0, left: 50, right: 50),
      child: GetBoxOffset(
        offset: offset,
        child: Column(
          children:List.generate(viewModel.jobExp.length, (index) {
            return Column(
              children: [
                if(index==0)
                  const Padding(
                    padding: EdgeInsets.only(bottom:41.0),
                    child: Divider(color: Colors.white,),
                  ),
                JobExpTile(model: viewModel.jobExp[index]),
              ],
            );}),
        ),
      ),
    );
  }
}





