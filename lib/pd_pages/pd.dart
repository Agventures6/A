import 'package:flutter/material.dart';
import '../imp_pages/home_page.dart';
import 'diseases_page.dart';
import 'pest_page.dart';

class PestPage extends StatefulWidget {
  const PestPage({super.key});

  @override
  _PestPageState createState() => _PestPageState();
}

class _PestPageState extends State<PestPage> {
  bool showDiseases = true; // Track the selected content: true for Diseases, false for Insects

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Navigate back to the previous page
          },
        ),
        title: const Text("Pest and Diseases"),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {},
          ),
        ],
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      showDiseases = true; // Display Diseases content
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: showDiseases ? Colors.green : Colors.grey,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text("Diseases"),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      showDiseases = false; // Display Insects content
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: !showDiseases ? Colors.green : Colors.grey,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text("Insects"),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Expanded(child: showDiseases ? const DiseasesPage() : const InsectsPage()),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.green,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.black),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pest_control, color: Colors.black),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info, color: Colors.black),
            label: '',
          ),
        ],
        onTap: (index) {
          if (index == 0) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const HomePage()), // Navigate to Homepage
            );
          }
        },
      ),
    );
  }
}
