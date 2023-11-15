import 'package:flutter/material.dart';
import 'package:industrio_2023/constants.dart';

class HomeContent extends StatelessWidget {
  final String image;
  final String headline;
  final String description;
  final bool left;
  const HomeContent({
    super.key,
    required this.image,
    required this.headline,
    required this.description,
    required this.left,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 50.0),
      child: Wrap(
        alignment: WrapAlignment.center,
        verticalDirection: left ? VerticalDirection.down : VerticalDirection.up,
        children: [
          left ? imageConatainer(context) : textConatainer(context),
          left ? textConatainer(context) : imageConatainer(context),
        ],
      ),
    );
  }

  Widget imageConatainer(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    return FittedBox(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(contentHeight / 2),
              child: SizedBox(
                height: contentHeight,
                child: Image.asset(image),
              ),
            ),
            Transform.translate(
              offset: left
                  ? const Offset(contentHeight / 30, contentHeight / 30)
                  : const Offset(-contentHeight / 30, -contentHeight / 30),
              child: Container(
                height: contentHeight,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(contentHeight / 2),
                  border: Border.all(
                    color: colorScheme.primaryContainer,
                    width: 1.0,
                  ),
                ),
                child: Opacity(
                  opacity: 0.0,
                  child: Image.asset(image),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget textConatainer(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final TextTheme textTheme = Theme.of(context).textTheme;
    return Container(
      height: contentHeight,
      width: width > 600 ? 600 : width * 0.8,
      margin:
          EdgeInsets.symmetric(horizontal: width > 600 ? width * 0.05 : 0.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FittedBox(
            child: RichText(
              text: TextSpan(
                style: textTheme.titleMedium?.copyWith(
                  fontSize: 50,
                ),
                children: [
                  TextSpan(
                    text:
                        '${headline.split(' ').sublist(0, headline.split(' ').length - 1).join(' ')} ',
                  ),
                  TextSpan(
                    text: headline.split(' ').last,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
          ),
          Text(
            description,
            style: textTheme.displaySmall?.copyWith(
              fontSize: 18,
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}
