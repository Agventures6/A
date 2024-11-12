import 'package:flutter/material.dart';

class FertilizerPage extends StatefulWidget {
  const FertilizerPage({super.key, required this.title});

  final String title;

  @override
  _FertilizerPageState createState() => _FertilizerPageState();
}

class _FertilizerPageState extends State<FertilizerPage> {
  int _treeCount = 2;

  // Base fertilizer requirements for 1 tree (values are examples, adjust as needed)
  final double _baseMop = 1.3;
  final double _baseTsp = 0.87;
  final double _baseUrea = 1.7;

  double _mopRequired = 0.0;
  double _tspRequired = 0.0;
  double _ureaRequired = 0.0;

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

  void _calculateFertilizer() {
    setState(() {
      _mopRequired = _baseMop * _treeCount;
      _tspRequired = _baseTsp * _treeCount;
      _ureaRequired = _baseUrea * _treeCount;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
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
            const Text('Fertilizer'),
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
            const Text('Fertilizer Calculator'),
            const SizedBox(height: 16.0),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Column(
                children: [
                  const Text("Number of trees"),
                  const SizedBox(height: 16.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: _decrementTreeCount,
                        icon: const Icon(Icons.remove),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 24.0),
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Column(
                          children: [
                            Text(
                              '$_treeCount',
                              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                            ),
                            const Text('Trees', style: TextStyle(fontSize: 12)),
                          ],
                        ),
                      ),
                      IconButton(
                        onPressed: _incrementTreeCount,
                        icon: const Icon(Icons.add),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16.0),
                  ElevatedButton(
                    onPressed: _calculateFertilizer,
                    child: const Text('Calculate'),
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          const Text('MOP', style: TextStyle(fontWeight: FontWeight.bold)),
                          Text('${_mopRequired.toStringAsFixed(1)} kg'),
                        ],
                      ),
                      Column(
                        children: [
                          const Text('TSP', style: TextStyle(fontWeight: FontWeight.bold)),
                          Text('${_tspRequired.toStringAsFixed(1)} kg'),
                        ],
                      ),
                      Column(
                        children: [
                          const Text('Urea', style: TextStyle(fontWeight: FontWeight.bold)),
                          Text('${_ureaRequired.toStringAsFixed(1)} kg'),
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
