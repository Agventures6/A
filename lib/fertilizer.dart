import 'package:flutter/material.dart';

class FertilizerPage extends StatefulWidget {
  const FertilizerPage({super.key, required this.title});

  final String title;

  @override
  _FertilizerPageState createState() => _FertilizerPageState();
}

class _FertilizerPageState extends State<FertilizerPage> {
  int _treeCount = 2;

  void _incrementTreeCount() {
    setState(() {
      _treeCount++;
    });
  }

  void _decrementTreeCount() {
    setState(() {
      if (_treeCount > 0) {
        _treeCount--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
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
              // Handle notifications
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: const Text('Fertilizer'),
            ),
            const SizedBox(height: 16.0),
            Table(
              border: TableBorder.all(),
              children: const [
                TableRow(
                  children: [
                    Center(child: Text('NPK\n(10:10:10)')),
                    Center(child: Text('Potassium\nSulphate')),
                  ],
                ),
                TableRow(
                  children: [
                    Center(child: Text('Calcium\nNitrate')),
                    Center(child: Text('Potassium\nNitrate')),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Fertilizer Calculator'),
            ),
            const SizedBox(height: 16.0),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Column(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      '$_treeCount\nTrees',
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                        onPressed: _decrementTreeCount,
                        icon: const Icon(Icons.remove),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text('Calculate'),
                      ),
                      IconButton(
                        onPressed: _incrementTreeCount,
                        icon: const Icon(Icons.add),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16.0),
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Text('DAP', style: TextStyle(fontWeight: FontWeight.bold)),
                          Text('870g'),
                        ],
                      ),
                      Column(
                        children: [
                          Text('Urea', style: TextStyle(fontWeight: FontWeight.bold)),
                          Text('1.4 kg'),
                        ],
                      ),
                      Column(
                        children: [
                          Text('MOP', style: TextStyle(fontWeight: FontWeight.bold)),
                          Text('1.3 kg'),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 16.0),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Find Products'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.photo_camera),
            label: 'Camera',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.play_circle),
            label: 'Play',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.delivery_dining),
            label: 'Delivery',
          ),
        ],
      ),
    );
  }
}
