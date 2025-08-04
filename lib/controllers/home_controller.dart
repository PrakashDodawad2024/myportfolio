// lib/controllers/home_controller.dart
import 'package:get/get.dart';
import '../models/project_model.dart';

class HomeController extends GetxController {
  RxList<ProjectModel> projects = <ProjectModel>[
    ProjectModel(
      title: 'ServiceWRK Technician',
      description: 'Flutter app with Firebase, GraphQL, Hive, GetX.',
    ),
    ProjectModel(
      title: 'ServiceWRK Agent',
      description: 'Ticket management backend app for agents.',
    ),
    ProjectModel(
      title: 'Pharmawrk',
      description: 'Field tool for Medical Reps using Flutter, S3, and GetX.',
    ),
  ].obs;
}
