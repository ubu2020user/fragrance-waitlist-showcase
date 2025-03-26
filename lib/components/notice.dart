import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../i18n/strings.g.dart';

class Notice extends StatelessWidget {
  const Notice({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            ListTile(
              title: Text(t.notice.title),
              subtitle: Text(t.notice.description),
            ),
            TextButton(
              onPressed: () => _showSnackbar(context),
              child: Text(t.notice.visitDiptyque),
            ),
          ],
        ),
      ),
    );
  }

  void _showSnackbar(BuildContext context) =>
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(t.notice.visitDiptyque),
          action: SnackBarAction(
            label: t.notice.visit,
            onPressed: _openDiptyqueWebsite,
          ),
        ),
      );

  void _openDiptyqueWebsite() {
    try {
      launchUrl(
        Uri.parse("https://www.diptyqueparis.com/"),
        webViewConfiguration: WebViewConfiguration(
          enableJavaScript: false,
          enableDomStorage: false,
        ),
      );
    } catch (e) {
      debugPrint("Error opening Diptyque website: $e");
    }
  }
}
