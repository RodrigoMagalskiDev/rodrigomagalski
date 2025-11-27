class Project {
  final String title;
  final String description;
  final String imageUrl;
  final String repoUrl;
  final String? demoUrl;

  Project({
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.repoUrl,
    this.demoUrl,
  });
}
