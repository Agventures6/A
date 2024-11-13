import 'package:flutter/material.dart';

class BrownRotPage extends StatelessWidget {
  const BrownRotPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Brown Rot'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Plant Disease",
              style: TextStyle(color: Colors.green, fontSize: 16),
            ),
            const SizedBox(height: 10),
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.asset(
                  'assets/pd_assets/harvesting_stage/Picture3.jpg',
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "Symptoms",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              "• Wilting and browning of flowers.\n"
              "• Affixed to the twig in a gummy mass.\n"
              "• Soft, brown patches on fruits.\n"
              "• Fruits get mummified.\n"
              "• Stored fruits may turn black.",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            const Text(
              "Brown Rot symptoms vary depending on the crop, primarily characterized by a blossom blight phase followed by fruit rot. The first sign of blossom blight is the wilting and browning of flowers, which often remain stuck to the twig in a gummy mass. Infection can extend into the twig, causing it to girdle. If shoots do not die completely, the infection can spread to developing leaves and fruits. Fruit rot affects both hanging fruits on trees and stored fruits. Soft, brown patches appear on the fruits, growing and developing white or yellow pustules, sometimes in concentric circles. The fruits gradually dehydrate, rot, and mummify. Stored fruits may not develop pustules and may turn black instead.",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            const Text(
              "More Info",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              "Scientific Name: Monilinia laxa",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            const Text(
              "Also found in: Pear, Almond, Apricot, Cherry, Peach, Pistachio",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            const Text(
              "Preventive Measures",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              "• Use healthy plant material from certified sources.\n"
              "• Implement a good nutrition program with proper irrigation.\n"
              "• Provide good drainage and ventilation in the field.\n"
              "• Use nets to reduce damage by birds.\n"
              "• Regularly monitor the orchard and destroy damaged branches or mummified fruits.\n"
              "• Avoid wounding or splitting the fruits.\n"
              "• Late pruning to improve foliage ventilation is recommended.\n"
              "• Plow deeply to bury plant residues under the surface.\n"
              "• Keep storage rooms clean.\n"
              "• Store fruits in a clean, dry room at temperatures around 5°C.\n"
              "• Take care not to pull the stalks off the fruits when harvesting.\n"
              "• Good general hygiene can reduce the chances of infection.\n"
              "• Check stored fruits regularly and destroy damaged ones.",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            const Text(
              "What caused it?",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              "Brown Rot is caused by *Monilinia laxa*, which can infect many hosts, especially stone fruits such as almond, apple, apricot, cherry, peach, pear, plum, and quince. The fungus overwinters in dry leaves or mummified fruits left hanging on trees. Its spores are spread by wind, water, or insects. Infection is favored by wounds on fruits (from birds or insects) or contact between healthy and infected parts. High humidity, rain or dew, and moderate temperatures (15° to 25°C) during bloom are ideal for infection. Symptoms on fruits typically appear from midsummer, whether they are still on the tree or in storage. Stored fruits may turn completely black without developing pustules. Due to the high risk of transmission, significant losses can be expected both in orchards and during storage.",
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
