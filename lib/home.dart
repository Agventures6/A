import 'package:flutter/material.dart';
import 'camera_page.dart';
import 'drone_view_page.dart';
import 'store_page.dart';
import 'profile_page.dart';
import 'treehealth.dart';
import 'fertilizer.dart';
import 'financial_overview_screen.dart';
import 'pest.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      switch (index) {
        case 0:
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const Homepage(),
            ),
          );
          break;
        case 1:
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const TreeHealthPage(),
            ),
          );
          break;
        case 2:
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const StorePage(),
            ),
          );
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ProfilePage(),
                ),
              );
            },
            child: const Padding(
              padding: EdgeInsets.only(right: 20.0), // Added padding
              child: CircleAvatar(
                radius: 15,
                backgroundImage: AssetImage('assets/avatar.png'),
              ),
            ),
          ),
        ],
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      drawer: const Drawer(),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CameraPage(),
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 12.0),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '  Scan here    ->',
                      style: TextStyle(fontSize: 20.0),
                    ),
                    Icon(Icons.qr_code_scanner, color: Colors.black87),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      children: [
                        buildCard('DRONE VIEW', 'assets/1693624144827.jpeg.jpg', context, const DroneViewPage()),
                        buildCard('Pest and Diseases', 'assets/Apple-pest_lep_RBLR-190306-008-768x520.jpg', context, const PestPage()),
                        buildCard('Fertilizers', 'assets/Bild1.jpg', context, const FertilizerPage(title: 'Fertilizers')),
                        buildCard('Profit Estimate', 'assets/Screenshot 2024-08-29 112645.png', context, const FinancialOverviewScreen()),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                          decoration: BoxDecoration(
                            color: Colors.teal.shade100,
                            borderRadius: BorderRadius.circular(12.0),
                            border: Border.all(color: Colors.teal.shade600, width: 2.0),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Weather',
                                style: TextStyle(
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.teal.shade700,
                                ),
                              ),
                              const SizedBox(height: 15),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Location: Dindigul',
                                        style: TextStyle(
                                          fontSize: 14.0,
                                          color: Colors.teal.shade800,
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      Text(
                                        'Temperature: 25°C',
                                        style: TextStyle(
                                          fontSize: 14.0,
                                          color: Colors.teal.shade800,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Humidity: 60%',
                                        style: TextStyle(
                                          fontSize: 14.0,
                                          color: Colors.teal.shade800,
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      Text(
                                        'Wind Speed: 10 km/hr',
                                        style: TextStyle(
                                          fontSize: 14.0,
                                          color: Colors.teal.shade800,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.nature_outlined),
            label: 'Tree Health',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.store),
            label: 'Store',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
        backgroundColor: Colors.green,
        onTap: _onItemTapped,
      ),
    );
  }

  Widget buildCard(String title, String imagePath, BuildContext context, Widget destinationPage) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => destinationPage,
          ),
        );
      },
      child: Card(
        color: Colors.teal.shade100,
        elevation: 4.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.vertical(top: Radius.circular(10.0)),
                  image: DecorationImage(
                    image: AssetImage(imagePath),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
