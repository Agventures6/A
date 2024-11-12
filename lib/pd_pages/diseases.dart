import 'package:flutter/material.dart';
import '../widgets/card.dart';
import 'disease_details/anthracnose.dart';

class DiseasesPage extends StatelessWidget {
  const DiseasesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Diseases by Stage",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            "All pest and diseases that might appear in crops at different stages",
            style: TextStyle(fontSize: 15),
          ),
          const SizedBox(height: 20),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Seedling stage",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 200,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: _firstItems(),
              ),
            ),
          ),
          const SizedBox(height: 20),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Vegetative stage",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 200,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: _secondItems(),
              ),
            ),
          ),
          const SizedBox(height: 20),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Flowering stage",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 200,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: _thirdItems(),
              ),
            ),
          ),
          const SizedBox(height: 20),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Fruiting stage",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 200,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: _fourthItems(),
              ),
            ),
          ),
          const SizedBox(height: 20),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Harvesting stage",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 200,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: _fifthItems(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> _firstItems() {
    return [
      const CustomCard(title: 'Anthracnose', imagePath: 'assets/pd_assets/seedling_stage/Picture1.png', destinationPage: AnthracnosePage()),
      const CustomCard(title: 'Apple Mosaic Virus', imagePath: 'assets/pd_assets/seedling_stage/Picture2.png', destinationPage: AnthracnosePage()),
      const CustomCard(title: 'Stecklenberger', imagePath: 'assets/pd_assets/seedling_stage/Picture3.png', destinationPage: AnthracnosePage()),
      const CustomCard(title: 'Bacterial Canker', imagePath: 'assets/pd_assets/seedling_stage/Picture4.png', destinationPage: AnthracnosePage()),
      const CustomCard(title: 'Aphids', imagePath: 'assets/pd_assets/seedling_stage/Picture5.png', destinationPage: AnthracnosePage()),
      const CustomCard(title: 'Transparent Scale', imagePath: 'assets/pd_assets/seedling_stage/Picture6.png', destinationPage: AnthracnosePage()),
      const CustomCard(title: 'European Earwig', imagePath: 'assets/pd_assets/seedling_stage/Picture7.png', destinationPage: AnthracnosePage()),
    ];
  }

  List<Widget> _secondItems() {
    return [
      const CustomCard(title: 'Powdery Mildew', imagePath: 'assets/pd_assets/vegetative_stage/Picture1.jpg', destinationPage: AnthracnosePage()),
      const CustomCard(title: 'Fruit Tree Canker', imagePath: 'assets/pd_assets/vegetative_stage/Picture2.jpg', destinationPage: AnthracnosePage()),
      const CustomCard(title: 'Apple Scab', imagePath: 'assets/pd_assets/vegetative_stage/Picture3.jpg', destinationPage: AnthracnosePage()),
      const CustomCard(title: 'Silver Leaf', imagePath: 'assets/pd_assets/vegetative_stage/Picture4.jpg', destinationPage: AnthracnosePage()),
      const CustomCard(title: 'Dead Arm', imagePath: 'assets/pd_assets/vegetative_stage/Picture5.jpg', destinationPage: AnthracnosePage()),
      const CustomCard(title: 'Apple Mosaic', imagePath: 'assets/pd_assets/vegetative_stage/Picture6.jpg', destinationPage: AnthracnosePage()),
    ];
  }

  List<Widget> _thirdItems() {
    return [
      const CustomCard(title: 'Apple Root And Collar Rot', imagePath: 'assets/pd_assets/flowering_stage/Picture1.jpg', destinationPage: AnthracnosePage()),
      const CustomCard(title: 'Powdery Mildew', imagePath: 'assets/pd_assets/flowering_stage/Picture2.jpg', destinationPage: AnthracnosePage()),
      const CustomCard(title: 'Apple Scab', imagePath: 'assets/pd_assets/flowering_stage/Picture3.jpg', destinationPage: AnthracnosePage()),
      const CustomCard(title: 'Brown Rot', imagePath: 'assets/pd_assets/flowering_stage/Picture4.jpg', destinationPage: AnthracnosePage()),
      const CustomCard(title: 'Silver Leaf', imagePath: 'assets/pd_assets/flowering_stage/Picture5.jpg', destinationPage: AnthracnosePage()),
    ];
  }

  List<Widget> _fourthItems() {
    return [
      const CustomCard(title: 'Apple Root and Collar Rot', imagePath: 'assets/pd_assets/fruiting_stage/Picture1.jpg', destinationPage: AnthracnosePage()),
      const CustomCard(title: 'Powdery Mildew', imagePath: 'assets/pd_assets/fruiting_stage/Picture2.jpg', destinationPage: AnthracnosePage()),
      const CustomCard(title: 'Fruit Tree Canker', imagePath: 'assets/pd_assets/fruiting_stage/Picture3.jpg', destinationPage: AnthracnosePage()),
      const CustomCard(title: 'Apple Scab', imagePath: 'assets/pd_assets/fruiting_stage/Picture4.jpg', destinationPage: AnthracnosePage()),
      const CustomCard(title: 'Spider Mites', imagePath: 'assets/pd_assets/fruiting_stage/Picture5.jpg', destinationPage: AnthracnosePage()),
      const CustomCard(title: 'Codling Moth', imagePath: 'assets/pd_assets/fruiting_stage/Picture6.jpg', destinationPage: AnthracnosePage()),
    ];
  }

  List<Widget> _fifthItems() {
    return [
      const CustomCard(title: 'Apple Root and Collar Root', imagePath: 'assets/pd_assets/harvesting_stage/Picture1.jpg', destinationPage: AnthracnosePage()),
      const CustomCard(title: 'Fruit Tree Canker', imagePath: 'assets/pd_assets/harvesting_stage/Picture2.jpg', destinationPage: AnthracnosePage()),
      const CustomCard(title: 'Brown Rot', imagePath: 'assets/pd_assets/harvesting_stage/Picture3.jpg', destinationPage: AnthracnosePage()),
      const CustomCard(title: 'Blossom Blight and Fruit rot', imagePath: 'assets/pd_assets/harvesting_stage/Picture4.jpg', destinationPage: AnthracnosePage()),
      const CustomCard(title: 'Silver Leaf', imagePath: 'assets/pd_assets/harvesting_stage/Picture5.jpg', destinationPage: AnthracnosePage()),
      const CustomCard(title: 'Anthracnose of Apple', imagePath: 'assets/pd_assets/harvesting_stage/Picture6.jpg', destinationPage: AnthracnosePage()),
    ];
  }
}
