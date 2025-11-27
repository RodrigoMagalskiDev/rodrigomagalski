// import 'package:flutter/material.dart';
// import '../../../projects/data/projects_repository_impl.dart';
// import '../../../projects/presentation/widgets/project_card.dart';

// class ProjectsPage extends StatelessWidget {
//   const ProjectsPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final projects = ProjectsRepositoryImpl().fetchProjects();

//     return Scaffold(
//       appBar: AppBar(title: const Text('Projetos')),
//       body: GridView.builder(
//         padding: const EdgeInsets.all(24),
//         gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 2,
//           mainAxisSpacing: 20,
//           crossAxisSpacing: 20,
//           childAspectRatio: 3 / 2,
//         ),
//         itemCount: projects.length,
//         itemBuilder: (context, index) {
//           return ProjectCard(project: projects[index]);
//         },
//       ),
//     );
//   }
// }
