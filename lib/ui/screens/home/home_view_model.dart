import 'package:get/get.dart';
import 'package:stacked/stacked.dart';
import 'package:web_portfolio/utils/consts.dart';

import '../../../core/models/job_model.dart';
import 'home_page.dart';

class HomeViewModel extends BaseViewModel{
List<JobModel> jobExp = [
  JobModel(
      companyName: Details.firstJobCompany,
      contractDate: Details.firstJobDate,
      role: Details.firstJobRole,
  tasks: Details.firstJobDesc  ),
  JobModel(
      companyName: Details.secJobCompany,
      contractDate: Details.secJobDate,
      role: Details.secondJobRole,
      tasks:  Details.secJobDesc),
  JobModel(
      companyName: Details.thirdJobCompany,
      contractDate: Details.thirdJobDate,
      role: Details.thirdJobRole,
      tasks: Details.thirdJobDesc  ),
  JobModel(
      companyName: Details.fourthJobCompany,
      contractDate: Details.fourthJobDate,
      role: Details.fourthJobRole,
      tasks:Details.fourthJobDesc),

];
}