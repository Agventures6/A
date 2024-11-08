import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ManualPage extends StatelessWidget {
  const ManualPage({super.key});

  Future<void> _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Manuals'),
        backgroundColor: Colors.green[700],
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green[700],
                padding: const EdgeInsets.symmetric(vertical: 15),
                textStyle: const TextStyle(fontSize: 18),
              ),
              onPressed: () => _launchURL('https://docs.google.com/uc?export=download&id=1xSr2qbA603yaIamIghHvZdUitJNDSkNl'),
              child: const Text('Tamil Manual'),
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green[700],
                padding: const EdgeInsets.symmetric(vertical: 15),
                textStyle: const TextStyle(fontSize: 18),
              ),
              onPressed: () => _launchURL('https://docs.google.com/uc?export=download&id=14wxpc2GlgYxnJKpb86wIJsEXauNw05hD'),
              child: const Text('English Manual'),
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green[700],
                padding: const EdgeInsets.symmetric(vertical: 15),
                textStyle: const TextStyle(fontSize: 18),
              ),
              onPressed: () => _launchURL('https://docs.google.com/uc?export=download&id=1CnFWxjk5csN98hV71W6rUfFDjATAlNGz'),
              child: const Text('Hindi Manual'),
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green[700],
                padding: const EdgeInsets.symmetric(vertical: 15),
                textStyle: const TextStyle(fontSize: 18),
              ),
              onPressed: () => _launchURL('https://docs.google.com/uc?export=download&id=16jcWhMKum9TzPZIQsqSxzg2b0hZxCA79'),
              child: const Text('Kashmiri Manual'),
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green[700],
                padding: const EdgeInsets.symmetric(vertical: 15),
                textStyle: const TextStyle(fontSize: 18),
              ),
              onPressed: () => _launchURL('https://docs.google.com/uc?export=download&id=1grNhNnMw27TORyIYymwa5CHztTPjjIkH'),
              child: const Text('Urdu Manual'),
            ),
            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
