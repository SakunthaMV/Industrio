import 'package:flutter/material.dart';
import 'package:industrio_2023/constants.dart';
import 'package:industrio_2023/pages/people/people_page.dart';
import 'package:industrio_2023/pages/widgets/common_page.dart';

class KeynoteSpeakerPage extends StatelessWidget {
  static const String route = 'Keynote Speaker';
  const KeynoteSpeakerPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final double width = MediaQuery.of(context).size.width;
    return CommonPage(
      page: PeoplesPage.route,
      content: Column(
        children: [
          Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              Container(
                height: contentHeight > width ? width * 0.8 : contentHeight,
                width: width > 500 ? 500 : width * 0.8,
                margin: const EdgeInsets.only(top: 30.0),
                child: Center(
                  child: ClipOval(
                    child: Image.asset(suneth),
                  ),
                ),
              ),
              SizedBox(
                width: width > 500 ? 500 : width * 0.8,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FittedBox(
                      child: Text(
                        'Mr. Suneth Kotuthenne',
                        style: textTheme.titleLarge?.copyWith(
                            fontWeight: FontWeight.bold, fontSize: 50.0),
                      ),
                    ),
                    FittedBox(
                      child: Text(
                        'Supply Chain Director at Hemas Pharmaceuticals/\nSurgical'
                        ' & Diagnostics (Pvt) Ltd.',
                        style: textTheme.bodyMedium?.copyWith(
                          color: colorScheme.secondary,
                          fontSize: 20.0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            width: width > 1000 ? 1000 : width * 0.9,
            margin: const EdgeInsets.symmetric(
              vertical: 30.0,
              horizontal: 20.0,
            ),
            child: Text(
              speakerDetails,
              style: textTheme.displaySmall?.copyWith(
                fontSize: 18,
                height: 1.5,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
