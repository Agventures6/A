import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LanguageSelectionPage(),
    );
  }
}
class LanguageSelectionPage extends StatelessWidget {
  const LanguageSelectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Top Section with Icon and Green Background
          Container(
            height: MediaQuery.of(context).size.height * 0.4,
            color: Colors.green,
            child: Center(
              child: Image.asset(
                'assets/tree_logo.png', // Replace with your image asset
                height: 100,
              ),
            ),
          ),
          // Middle Section with Language Selection
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(20),
              color: const Color(0xFFE0F7FA),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Please, Select your language!!",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 20),
                        Row(
                          children: [
                            Radio(
                              value: 1,
                              groupValue: 1,
                              onChanged: (value) {},
                              activeColor: Colors.teal,
                            ),
                            const Text("English"),
                          ],
                        ),
                        Row(
                          children: [
                            Radio(
                              value: 2,
                              groupValue: 1,
                              onChanged: (value) {},
                              activeColor: Colors.teal,
                            ),
                            const Text("हिंदी"),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Center(
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              padding: const EdgeInsets.symmetric(horizontal: 50),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              shadowColor: Colors.black26,
                              elevation: 5,
                            ),
                            child: const Text(
                              "Next",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Bottom Section with Illustration
          Container(
            height: MediaQuery.of(context).size.height * 0.2,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/illustration.png'), // Replace with your image asset
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
      // Back Button at the Top
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: () {},
        child: const Icon(Icons.arrow_back, color: Colors.black),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
    );
  }
}
