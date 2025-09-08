class ProjectModel {
  final String image;
  final String title;
  final String subTitle;
  final String? androidLink;
  final String? iosLink;
  final String? webLink;
  final String? githubLink;

  ProjectModel({
    required this.image,
    required this.title,
    required this.subTitle,
    this.androidLink,
    this.iosLink,
    this.webLink,
    this.githubLink,
  });
}

List<ProjectModel> projects = [
  ProjectModel(
    image: 'assets/projects/notes.png',
    title: 'Notes App',
    subTitle:
        'A simple and clean Flutter notes application that allows users to create, search, and organize their notes easily. Built using Flutter and Bloc (flutter_bloc) for state management.',
    githubLink: 'https://github.com/Beso-07/Notes-App',
  ),
  ProjectModel(
    image: 'assets/projects/weather.png',
    title: 'Weather App',
    subTitle:
        'A simple weather application built with Flutter that provides real-time weather information',
    githubLink: 'https://github.com/Beso-07/WeatherApp',
  ),
  ProjectModel(
    image: 'assets/projects/news.png',
    title: 'News App',
    subTitle:
        'A modern, cross-platform news application built with Flutter. This app allows users to stay updated with the latest news from various sources, browse articles by category, and read full stories in a clean, user-friendly interface.',
    githubLink: 'https://github.com/Beso-07/news_app',
  ),
  ProjectModel(
    image: 'assets/projects/chat.png',
    title: 'Chat App',
    subTitle: 'A real-time chat application with user authentication.',
    githubLink: '',
  ),
  ProjectModel(
    image: 'assets/projects/walter.png',
    title: 'Walter Shop - Ecommerce App',
    subTitle:
        'This project implements a complete shopping app with welcome, authentication, and shopping home screens, plus Arabic localization.',
    githubLink: 'https://github.com/Beso-07/Walter-Shop',
  ),
];
