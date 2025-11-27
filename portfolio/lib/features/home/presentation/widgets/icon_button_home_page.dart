import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class IconButtonHomePage extends StatelessWidget {
  final IconData icon;
  final String url;
  const IconButtonHomePage({super.key, required this.icon, required this.url});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        openUrl();
      },
      icon: Icon(icon, color: Colors.white),
    );
  }

  Future<void> openUrl() async {
    final _url = Uri.parse(url);
    if (!await launchUrl(_url, webOnlyWindowName: "_blank")) {
      throw 'Could not launch $_url';
    }
  }
}
