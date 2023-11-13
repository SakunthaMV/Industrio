import 'package:flutter/material.dart';
import 'package:industrio_2023/pages/projects/profile_card.dart';
import 'package:industrio_2023/pages/projects/projects_page.dart';
import 'package:industrio_2023/pages/widgets/common_page.dart';

class ProjectItem extends StatelessWidget {
  static const route = "project-item";
  const ProjectItem({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return CommonPage(
      page: ProjectPage.route,
      content: Container(
        width: size.width,
        padding: const EdgeInsets.fromLTRB(30, 20, 30, 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text("Project Item",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 30),
            const Divider(thickness: 2),
            const Text("Mr. D. Hirimuthugoda", style: TextStyle(fontSize: 17)),
            const SizedBox(height: 30),
            profileItem(),
            const SizedBox(height: 30),
            Container(
              padding: const EdgeInsets.all(20),
              width: size.width * 0.8,
              decoration: const BoxDecoration(
                  color: Color(0xffE9DBE9),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Text(
                "Ullamco voluptate eiusmod Lorem qui proident proident officia quis voluptate eu quis non enim. Irure ullamco cupidatat enim excepteur deserunt pariatur sunt esse non ex. Reprehenderit velit reprehenderit consectetur minim excepteur duis consectetur proident magna esse incididunt. Commodo in id Lorem id exercitation et ullamco incididunt tempor est aliqua adipisicing. Proident nisi laboris nostrud duis consectetur voluptate Lorem eiusmod nulla. Velit veniam reprehenderit duis sunt anim est tempor ea qui veniam ipsum ipsum ex amet. Velit aliquip sint occaecat Lorem incididunt duis dolore proident occaecat aute pariatur qui.",
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
