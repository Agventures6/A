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
  final double _baseMop = 0.67;
  final double _baseTsp = 0.43;
  final double _baseUrea = 0.87;
  final double _bDap = 0.43;
  final double _bUrea = 0.6;

  double _mopRequired = 0.0;
  double _tspRequired = 0.0;
  double _ureaRequired = 0.0;
  double _urea = 0.0;
  double _dap = 0.0;

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
      _urea = _bUrea * _treeCount;
      _dap = _bDap * _treeCount;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Fertilizer Calculator',
          style: TextStyle(fontWeight: FontWeight.normal),
        ),
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              decoration: BoxDecoration(
                border: const Border(
                  bottom: BorderSide(width: 2, color: Colors.grey),
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "Number of trees",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 16.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 30.0),
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            //borderRadius: BorderRadius.circular(50),
                            shape: BoxShape.circle),
                        child: Column(
                          children: [
                            IconButton(
                              onPressed: _decrementTreeCount,
                              icon: const Icon(Icons.remove),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 40),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Column(
                          children: [
                            Text(
                              '$_treeCount',
                              style: const TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold),
                            ),
                            const Text('Trees', style: TextStyle(fontSize: 12)),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 30.0),
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            //borderRadius: BorderRadius.circular(50),
                            shape: BoxShape.circle),
                        child: Column(
                          children: [
                            IconButton(
                              onPressed: _incrementTreeCount,
                              icon: const Icon(Icons.add),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16.0),
                  ElevatedButton(
                    onPressed: _calculateFertilizer,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      padding:
                          const EdgeInsets.symmetric(horizontal: 120, vertical: 15),
                      textStyle: const TextStyle(fontSize: 16),
                    ),
                    child: const Text(
                      'Calculate',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16.0),
            Container(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
              child: const Text(
                "Choose your preferred fertilizer combination (recommended amount for one year):",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.grey.shade300),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "MOP/TSP/Urea",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            const Text(
                              "MOP",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              '${_mopRequired.toStringAsFixed(1)} kg',
                              style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.grey),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            const Text(
                              "TSP",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              '${_tspRequired.toStringAsFixed(1)} kg',
                              style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.grey),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            const Text(
                              "Urea",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              '${_ureaRequired.toStringAsFixed(1)} kg',
                              style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.grey),
                            ),
                          ],
                        ),
                      ]),
                  const SizedBox(height: 10),
                  Align(
                    alignment: Alignment.centerRight,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(120, 36),
                      ),
                      child: const Text(
                        'View Details',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.grey.shade300),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "DAP/MOP/Urea",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            const Text(
                              "DAP",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              '${_dap.toStringAsFixed(1)} kg',
                              style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.grey),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            const Text(
                              "MOP",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              '${_mopRequired.toStringAsFixed(1)} kg',
                              style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.grey),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            const Text(
                              "Urea",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              '${_urea.toStringAsFixed(1)} kg',
                              style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.grey),
                            ),
                          ],
                        ),
                      ]),
                  const SizedBox(height: 10),
                  Align(
                    alignment: Alignment.centerRight,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(120, 36),
                      ),
                      child: const Text(
                        'View Details',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
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
