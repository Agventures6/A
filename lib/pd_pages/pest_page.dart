import 'package:flutter/material.dart';

class InsectsPage extends StatelessWidget {
  const InsectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "Insects",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        Expanded(
          child: GridView.count(
            crossAxisCount: 2,
            children: _insectItems(),
          ),
        ),
      ],
    );
  }

  List<Widget> _insectItems() {
    return [
      _buildGridItem('Aphids', 'assets/aphids.jpg'),
      _buildGridItem('Brown Sting', 'assets/brownstring.jpg'),
      _buildGridItem('Caterpillar', 'assets/caterpiller.jpg'),
      _buildGridItem('Codling Moth', 'assets/coldingmoth.jpg'),
    ];
  }

  Widget _buildGridItem(String title, String imagePath) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(imagePath, height: 80),
            const SizedBox(height: 10),
            Text(title, style: const TextStyle(color: Colors.black)),
          ],
        ),
      ),
    );
  }
}
