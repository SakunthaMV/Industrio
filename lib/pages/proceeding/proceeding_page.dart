import 'package:flutter/material.dart';
import 'package:industrio_2023/constants.dart';
import 'package:industrio_2023/pages/widgets/common_page.dart';

class ProceedingPage extends StatelessWidget {
  static const String route = 'Proceeding';
  const ProceedingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final TextTheme textTheme = Theme.of(context).textTheme;
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    return CommonPage(
      content: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 50.0,
          horizontal: width < 600 ? width * 0.05 : 50.0,
        ),
        child: Wrap(
          spacing: 50.0,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            SizedBox(
              width: 500,
              child: Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(25.0),
                  child: Image.asset(proceedingCover),
                ),
              ),
            ),
            SizedBox(
              width: width > 600 ? 500 : width * 0.9,
              height: width > 600 ? 500 : 500 * 500 / width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FittedBox(
                    child: RichText(
                      text: TextSpan(
                        style: textTheme.titleMedium?.copyWith(
                          wordSpacing: 1.5,
                          fontSize: 50.0,
                        ),
                        children: const [
                          TextSpan(
                            text: 'Our ',
                          ),
                          TextSpan(
                            text: 'Proceedings',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Text(
                    proceedingsDetails,
                    style: textTheme.displaySmall?.copyWith(
                      fontSize: 18,
                      height: 1.5,
                    ),
                  ),
                  Text(
                    'Proceedings Of the Event Will Be Available Soon for '
                    'Downloading and Viewing!',
                    style: textTheme.bodyMedium?.copyWith(
                      color: colorScheme.secondary,
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
