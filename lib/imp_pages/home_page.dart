import 'package:flutter/material.dart';
import '../camera_page.dart';
import '../drawer_pages/drawer.dart';
import '../drone_view_page.dart';
import '../financial_overview_screen.dart';
import '../pd_pages/pd.dart';
import '../profile_page.dart';
import '../services/fertilizer_calc.dart';
import '../widgets/card.dart';
import '../widgets/nav_bar.dart';
import '../widgets/weather_box.dart';
import 'weather_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<HomePage> {
  DateTime? _lastPressedTime;

  // Handle pop (back) navigation to prevent going back to IntroPage
  void _onPopInvokedWithResult(bool canPop, dynamic result) {
    final currentTime = DateTime.now();
    final isBackPressedTwice = _lastPressedTime == null ||
        currentTime.difference(_lastPressedTime!) > const Duration(seconds: 2);

    if (isBackPressedTwice) {
      _lastPressedTime = currentTime;
      // Show a snack bar when back is pressed once
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Press back again to exit the app."),
          duration: Duration(seconds: 2),
        ),
      );
    } else {
      // Close the app on second back press
      Navigator.of(context).pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      onPopInvokedWithResult:
          _onPopInvokedWithResult, // Intercept the back navigation
      child: Scaffold(
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
                padding: EdgeInsets.only(right: 20.0),
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
        drawer: const MyDrawer(),
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
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 12.0),
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
                        children: const [
                          CustomCard(
                            title: 'Drone View',
                            imagePath: 'assets/1693624144827.jpeg.jpg',
                            destinationPage: DroneViewPage(),
                          ),
                          CustomCard(
                            title: 'Pest and Diseases',
                            imagePath:
                                'assets/Apple-pest_lep_RBLR-190306-008-768x520.jpg',
                            destinationPage: PestPage(),
                          ),
                          CustomCard(
                            title: 'Fertilizer CALC',
                            imagePath: 'assets/Bild1.jpg',
                            destinationPage:
                                FertilizerPage(title: 'Fertilizers'),
                          ),
                          CustomCard(
                            title: 'Profit Estimate',
                            imagePath:
                                'assets/Screenshot 2024-08-29 112645.png',
                            destinationPage: FinancialOverviewScreen(),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Flexible(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const WeatherPage(),
                                ),
                              );
                            },
                            child: const WeatherBox(),
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
        bottomNavigationBar: const CustomBottomNavBar(currentIndex: 0),
      ),
    );
  }
}
