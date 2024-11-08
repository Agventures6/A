import 'package:flutter/material.dart';

class DroneViewPage extends StatelessWidget {
  const DroneViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[900], // Background color of the app
      appBar: AppBar(
        title: const Text("Drone View"),
        backgroundColor: Colors.green,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Go back to the previous page
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {
              // Handle notifications action
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              height: 200, // Height for the drone view area
              color: Colors.grey[300], // Placeholder color
              child: const Center(
                child: Text(
                  'Live Drone Camera Feed',
                  style: TextStyle(color: Colors.black54, fontSize: 18),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                const Text(
                  "Connect with Bluetooth",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                const Spacer(),
                Switch(
                  value: true, // Set to true or false depending on the state
                  onChanged: (value) {
                    // Handle switch toggle
                  },
                ),
              ],
            ),
            const SizedBox(height: 16),
            Container(
              padding: const EdgeInsets.all(16),
              color: Colors.white,
              child: Column(
                children: [
                  const Text(
                    "Drone Control",
                    style: TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 16),
                  // Use a Wrap widget instead of Row to avoid overflow
                  Wrap(
                    spacing: 10.0, // Space between buttons
                    runSpacing: 10.0, // Space between rows of buttons
                    alignment: WrapAlignment.center,
                    children: [
                      ElevatedButton.icon(
                        icon: const Icon(Icons.arrow_back),
                        label: const Text('Left'),
                        onPressed: () {
                          // Implement drone up movement
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.teal, // Button color
                        ),
                      ),
                      ElevatedButton.icon(
                        icon: const Icon(Icons.arrow_upward),
                        label: const Text('up'),
                        onPressed: () {
                          // Implement drone down movement
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.teal, // Button color
                        ),
                      ),
                      ElevatedButton.icon(
                        icon: const Icon(Icons.arrow_forward),
                        label: const Text('Right'),
                        onPressed: () {
                          // Implement drone left movement
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.teal, // Button color
                        ),
                      ),
                      ElevatedButton.icon(
                        icon: const Icon(Icons.arrow_downward),
                        label: const Text('down'),
                        onPressed: () {
                          // Implement drone right movement
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.teal, // Button color
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.camera_alt, size: 30, color: Colors.black),
                      Icon(Icons.videocam, size: 30, color: Colors.black),
                      Icon(Icons.landscape, size: 30, color: Colors.black),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.green[800], // Bottom navigation color
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.white),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.control_camera, color: Colors.white),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.folder, color: Colors.white),
            label: '',
          ),
        ],
      ),
    );
  }
}
