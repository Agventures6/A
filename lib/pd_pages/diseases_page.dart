import 'package:flutter/material.dart';
import '../widgets/card.dart';
import 'disease_details/anthracnose.dart';
import 'disease_details/aphids.dart';
import 'disease_details/appleroot.dart';
import 'disease_details/arm.dart';
import 'disease_details/blossom.dart';
import 'disease_details/brown.dart';
import 'disease_details/brownrot.dart';
import 'disease_details/canker.dart';
import 'disease_details/codling.dart';
import 'disease_details/earwig.dart';
import 'disease_details/fruittree.dart';
import 'disease_details/mosaic.dart';
import 'disease_details/powdery.dart';
import 'disease_details/scab.dart';
import 'disease_details/scale.dart';
import 'disease_details/silver.dart';
import 'disease_details/spider.dart';
import 'disease_details/stecklenberger.dart';

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
          //const SizedBox(height: 10),
          SizedBox(
            height: 200,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: _firstItems(),
              ),
            ),
          ),
          //const SizedBox(height: 20),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Vegetative stage",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          //const SizedBox(height: 10),
          SizedBox(
            height: 200,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: _secondItems(),
              ),
            ),
          ),
          //const SizedBox(height: 20),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Flowering stage",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          //const SizedBox(height: 10),
          SizedBox(
            height: 200,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: _thirdItems(),
              ),
            ),
          ),
          //const SizedBox(height: 20),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Fruiting stage",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          //const SizedBox(height: 10),
          SizedBox(
            height: 200,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: _fourthItems(),
              ),
            ),
          ),
          //const SizedBox(height: 20),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Harvesting stage",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          //const SizedBox(height: 10),
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
      const CustomCard(title: 'Apple Mosaic', imagePath: 'assets/pd_assets/seedling_stage/Picture2.png', destinationPage: MosaicPage()),
      const CustomCard(title: 'Stecklenberger', imagePath: 'assets/pd_assets/seedling_stage/Picture3.png', destinationPage: StecklenbergerPage()),
      const CustomCard(title: 'Bacterial Canker', imagePath: 'assets/pd_assets/seedling_stage/Picture4.png', destinationPage: BacterialCankerPage()),
      const CustomCard(title: 'Aphids', imagePath: 'assets/pd_assets/seedling_stage/Picture5.png', destinationPage: AphidsPage()),
      const CustomCard(title: 'Transparent Scale', imagePath: 'assets/pd_assets/seedling_stage/Picture6.png', destinationPage: TransparentScalePage()),
      const CustomCard(title: 'European Earwig', imagePath: 'assets/pd_assets/seedling_stage/Picture7.png', destinationPage: EuropeanEarwigPage()),
    ];
  }

  List<Widget> _secondItems() {
    return [
      const CustomCard(title: 'Powdery Mildew', imagePath: 'assets/pd_assets/vegetative_stage/Picture1.jpg', destinationPage: PowderyMildewPage()),
      const CustomCard(title: 'Fruit Tree Canker', imagePath: 'assets/pd_assets/vegetative_stage/Picture2.jpg', destinationPage: FruitTreeCankerPage()),
      const CustomCard(title: 'Apple Scab', imagePath: 'assets/pd_assets/vegetative_stage/Picture3.jpg', destinationPage: AppleScabPage()),
      const CustomCard(title: 'Silver Leaf', imagePath: 'assets/pd_assets/vegetative_stage/Picture4.jpg', destinationPage: SilverLeafPage()),
      const CustomCard(title: 'Dead Arm', imagePath: 'assets/pd_assets/vegetative_stage/Picture5.jpg', destinationPage: DeadArmPage()),
      const CustomCard(title: 'Apple Mosaic Virus', imagePath: 'assets/pd_assets/vegetative_stage/Picture6.jpg', destinationPage: MosaicPage()),
    ];
  }

  List<Widget> _thirdItems() {
    return [
      const CustomCard(title: 'Apple Root', imagePath: 'assets/pd_assets/flowering_stage/Picture1.jpg', destinationPage: AppleRootPage()),
      const CustomCard(title: 'Powdery Mildew', imagePath: 'assets/pd_assets/flowering_stage/Picture2.jpg', destinationPage: PowderyMildewPage()),
      const CustomCard(title: 'Apple Scab', imagePath: 'assets/pd_assets/flowering_stage/Picture3.jpg', destinationPage: AppleScabPage()),
      const CustomCard(title: 'Brown Rot', imagePath: 'assets/pd_assets/flowering_stage/Picture4.jpg', destinationPage: BrownPage()),
      const CustomCard(title: 'Silver Leaf', imagePath: 'assets/pd_assets/flowering_stage/Picture5.jpg', destinationPage: SilverLeafPage()),
    ];
  }

  List<Widget> _fourthItems() {
    return [
      const CustomCard(title: 'Apple Root', imagePath: 'assets/pd_assets/fruiting_stage/Picture1.jpg', destinationPage: AppleRootPage()),
      const CustomCard(title: 'Powdery Mildew', imagePath: 'assets/pd_assets/fruiting_stage/Picture2.jpg', destinationPage: PowderyMildewPage()),
      const CustomCard(title: 'Fruit Tree Canker', imagePath: 'assets/pd_assets/fruiting_stage/Picture3.jpg', destinationPage: FruitTreeCankerPage()),
      const CustomCard(title: 'Apple Scab', imagePath: 'assets/pd_assets/fruiting_stage/Picture4.jpg', destinationPage: AppleScabPage()),
      const CustomCard(title: 'Spider Mites', imagePath: 'assets/pd_assets/fruiting_stage/Picture5.jpg', destinationPage: SpiderMitesPage()),
      const CustomCard(title: 'Codling Moth', imagePath: 'assets/pd_assets/fruiting_stage/Picture6.jpg', destinationPage: CodlingMothPage()),
    ];
  }

  List<Widget> _fifthItems() {
    return [
      const CustomCard(title: 'Apple Root', imagePath: 'assets/pd_assets/harvesting_stage/Picture1.jpg', destinationPage: AppleRootPage()),
      const CustomCard(title: 'Fruit Tree Canker', imagePath: 'assets/pd_assets/harvesting_stage/Picture2.jpg', destinationPage: FruitTreeCankerPage()),
      const CustomCard(title: 'Brown Rot', imagePath: 'assets/pd_assets/harvesting_stage/Picture3.jpg', destinationPage: BrownRotPage()),
      const CustomCard(title: 'Blossom Blight and Fruit rot', imagePath: 'assets/pd_assets/harvesting_stage/Picture4.jpg', destinationPage: BlossomBlightPage()),
      const CustomCard(title: 'Silver Leaf', imagePath: 'assets/pd_assets/harvesting_stage/Picture5.jpg', destinationPage: SilverLeafPage()),
      const CustomCard(title: 'Anthracnose', imagePath: 'assets/pd_assets/harvesting_stage/Picture6.jpg', destinationPage: AnthracnosePage()),
    ];
  }
}
