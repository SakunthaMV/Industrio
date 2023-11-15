import 'package:flutter/material.dart';
import 'package:industrio_2023/pages/people/people_page.dart';
import 'package:industrio_2023/pages/widgets/common_page.dart';

class KeynoteSpeakerPage extends StatelessWidget {
  static const String route = 'Keynote Speaker';
  const KeynoteSpeakerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonPage(
      page: PeoplesPage.route,
      content: Placeholder(),
    );
  }
}
