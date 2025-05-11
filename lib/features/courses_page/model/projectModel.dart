// ignore_for_file: file_names

import 'package:my_prtofolio/constant/app_icon.dart';
import 'package:my_prtofolio/constants/assets.dart';

class ProjectModel {
  final String name;
  final String image;
  final String description;
  final List<String> tools;

  ProjectModel({
    required this.name,
    required this.image,
    required this.description,
    required this.tools,
  });
}

final List<ProjectModel> projects = [
  ProjectModel(
    name: 'Diad App',
    image: Assets.imagesComputer,
    description:
        ' An application that allows you to manage your daily tasks.   You can mark tasks as complete tasks, delete tasks, and add new tasks.  An application that allows you to manage your daily tasks.   You can mark tasks as complete tasks, delete tasks, and add new tasks. An application that allows you to manage your daily tasks.   You can mark tasks as complete tasks, delete tasks, and add new tasks.',
    tools: [
      'Flutter',
      'TMDB API',
      'Provider',
      'GetX',
      'GetX',
      'GetX',
      'GetX',
      'GetX',
      'GetX',
      'GetX',
      'GetX',
      'GetX',
      'GetX',
    ],
  ),
  ProjectModel(
    name: 'Doctor App',
    image: Assets.imagesEgyptFlag,
    description: 'تطبيق لإدارة مواعيد المرضى والأطباء.',
    tools: ['Flutter', 'Dio', 'REST API'],
  ),
  ProjectModel(
    name: 'Movie App',
    image: AppIcons.me,
    description: 'تطبيق لعرض أفلام وأخبار السينما.',
    tools: [
      'Flutter',
      'TMDB API',
      'Provider',
      'GetX',
      'GetX',
      'GetX',
      'GetX',
      'GetX',
      'GetX',
      'GetX',
      'GetX',
    ],
  ),
];
