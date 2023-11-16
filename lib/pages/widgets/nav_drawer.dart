import 'package:flutter/material.dart';
import 'package:industrio_2023/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class NavDrawer extends StatelessWidget {
  final String? page;
  const NavDrawer({super.key, this.page});

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    return Drawer(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 40.0,
            ),
            child: Image.asset(logo),
          ),
          SizedBox(
            height: 275.0,
            child: ListView.builder(
              itemCount: menuItems.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(
                    menuItems[index] == "/" ? "Home" : menuItems[index],
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.1,
                          color:
                              (page ?? ModalRoute.of(context)?.settings.name) ==
                                      menuItems[index]
                                  ? colorScheme.secondary
                                  : colorScheme.primary,
                        ),
                  ),
                  hoverColor: colorScheme.tertiary,
                  onTap: (page ?? ModalRoute.of(context)?.settings.name) !=
                          menuItems[index]
                      ? () {
                          Navigator.pushReplacementNamed(
                              context, menuItems[index]);
                        }
                      : null,
                );
              },
            ),
          ),
          usefulLinks(context),
        ],
      ),
    );
  }

  void externalLink(url) async {
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      toast('Something Went Wrong. Please Try Again');
    }
  }

  Widget usefulLinks(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(linkDetails.length, (index) {
          return SizedBox(
            width: 55.0,
            height: 55.0,
            child: IconButton(
              hoverColor: colorScheme.secondary.withOpacity(0.25),
              icon: Image.asset(linkDetails[index][0]),
              onPressed: () {
                externalLink(linkDetails[index][1]);
              },
            ),
          );
        }),
      ),
    );
  }
}
