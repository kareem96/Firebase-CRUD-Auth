import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomBottomAppBar extends StatelessWidget {
  final bool showMediumLink;
  final bool showDonationLink;
  final bool showGitHubLink;
  final String? customMediumLink;

  const CustomBottomAppBar(
      {Key? key,
      this.showMediumLink = true,
      this.showDonationLink = true,
      this.showGitHubLink = true,
      this.customMediumLink})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.grey.shade300,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            if (showGitHubLink)
              ActionChip(
                backgroundColor: Colors.blueGrey.shade200,
                avatar: Image.asset("assets/github.png"),
                label: const Text("GitHub"),
                onPressed: () async {
                  await launchUrl(
                      Uri.parse(
                          "https://github.com/kareem96/Firebase-CRUD-Auth"),
                      mode: LaunchMode.externalApplication);
                },
              ),
          ],
        ),
      ),
    );
  }
}
