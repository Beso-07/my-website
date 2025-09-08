class ExperienceModel {
  final String jobTitle;
  final String company;
  final String type;
  final String date;
  final String description;

  ExperienceModel({
    required this.jobTitle,
    required this.company,
    required this.type,
    required this.date,
    required this.description,
  });
}

List<ExperienceModel> experiences = [
  ExperienceModel(
    jobTitle: 'Flutter Developer',
    company: 'DEPI',
    date: 'Jul 2025 - Present',
    type: 'Hybrid',
    description:
        '• Developed responsive, user-friendly UIs using Flutter widgets and animations.\n'
        '• Implemented state management (Provider, Riverpod) and consumed RESTful APIs.\n'
        '• Wrote clean, maintainable, and well-documented code following clean architecture.\n',
  ),
  // ExperienceModel(
  //   jobTitle: 'Flutter Developer',
  //   company: 'Sprints',
  //   date: 'Jul 2025 - Aug 2025',
  //   type: 'Online',
  //   description:
  //       '• Developed responsive, user-friendly UIs using Flutter widgets and animations.\n'
  //       '• Implemented state management (Provider, Riverpod) and consumed RESTful APIs.\n'
  //       '• Wrote clean, maintainable, and well-documented code following clean architecture.\n',
  // ),
];
