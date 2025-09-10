class SkillsModel {
  final String? title;
  final List<String>? items;

  SkillsModel({this.title, this.items});
}

final List<SkillsModel> skills = [
  SkillsModel(title: "State Management", items: ["Bloc/Cubit", "Providor"]),
  SkillsModel(title: "Lcacal Storage", items: ["Hive", "Shared preference"]),
  SkillsModel(
    title: "Testsing",
    items: ["Unit testing", "Widget testing", "Integration testing"],
  ),
  SkillsModel(title: "Tools", items: ["Git", "Postman", "Figma", "VScode"]),
  SkillsModel(title: "Localization"),
  SkillsModel(title: "Responsive design"),
  SkillsModel(title: "Problem solving"),
  SkillsModel(title: "Clean code"),
  SkillsModel(title: "OOP"),
  SkillsModel(title: "Communication Skills"),
];
