import 'package:flutter/material.dart';
import 'package:industrio_2023/constants.dart';
import 'package:industrio_2023/models/responsive_layout.dart';
import 'package:industrio_2023/pages/home/home_content.dart';
import 'package:industrio_2023/pages/widgets/custom_appbar.dart';
import 'package:industrio_2023/pages/widgets/common_footer.dart';
import 'package:industrio_2023/pages/widgets/nav_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final TextTheme textTheme = Theme.of(context).textTheme;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: colorScheme.background,
      appBar: const CustomAppbar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: AlignmentDirectional.center,
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(50.0),
                    bottomRight: Radius.circular(50.0),
                  ),
                  child: ResponsiveLayout(
                    desktop: Image.asset(homeBackground),
                    tablet: Image.asset(homeBackground),
                    mobile: Image.asset(homeBackgroundMobile),
                  ),
                ),
                SizedBox(
                  width: width * 0.8,
                  child: FittedBox(
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        style: textTheme.displayLarge!.copyWith(
                          color: colorScheme.secondary,
                          height: 1.5,
                        ),
                        children: [
                          const TextSpan(
                            text: 'Welcome to a ',
                          ),
                          TextSpan(
                            text: 'Symposium',
                            style: TextStyle(
                              color: colorScheme.primary,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text:
                                '${width < 525 ? '\n' : ' '}Where Ideas Turn into ',
                          ),
                          TextSpan(
                            text: 'Solutions,',
                            style: TextStyle(
                              color: colorScheme.primary,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const TextSpan(
                            text: '\nand Solutions Shape ',
                          ),
                          TextSpan(
                            text: 'Industries.',
                            style: TextStyle(
                              color: colorScheme.primary,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const HomeContent(
              image: home_1,
              headline: 'What is INDUSTRIO?',
              description: whatIsIndustrio,
              left: true,
            ),
            const HomeContent(
              image: home_2,
              headline: 'Our Theme',
              description: ourTheme,
              left: false,
            ),
            const CommonFooter(),
          ],
        ),
      ),
      drawer: const ResponsiveLayout(
        mobile: NavDrawer(),
        tablet: NavDrawer(),
      ),
    );
  }
}
