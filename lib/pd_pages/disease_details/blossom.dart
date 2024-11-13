import 'package:flutter/material.dart';

class BlossomBlightPage extends StatelessWidget {
  const BlossomBlightPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Blossom Blight and Fruit Rot'),
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
                  'assets/pd_assets/harvesting_stage/Picture4.jpg',
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
              "• Blossoms wilt and turn brown, canker areas develop in woody tissue.\n"
              "• Tan-brown, circular spots on fruit.\n"
              "• Ash-gray-brown spore tufts on blossoms, twigs, and fruit.\n"
              "• Fruits on trees become shriveled and 'mummified'.",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            const Text(
              "Blossom Blight and Fruit Rot symptoms vary depending on the tree species but are usually separated into blossom blight, twig canker, and brown rot of fruits. Infected blossoms wilt, turn brown, and usually remain clung to the twig. Necrotic canker areas develop in woody tissue. Under moist or humid conditions, ash-gray-brown colored spore tufts form on the surface of diseased blossoms and twigs. A gummy substance usually exudes from the cankers, causing the blighted flowers to stay attached to the twig. Fruit susceptibility to brown rot increases during the last stages of maturity, usually 2 to 3 weeks prior to harvest. Initially, tan-brown, circular spots appear on the fruit skin. Under humid conditions, ash-gray-brown spore masses develop within these spots. Diseased fruit that do not fall to the ground dehydrate and become shriveled 'mummies' that cling to the branch.",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            const Text(
              "More Info",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              "Scientific Name: Monilinia fructigena",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            const Text(
              "Also found in: Almond, Cherry, Apricot, Peach, Pear",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            const Text(
              "Preventive Measures",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              "• Choose resistant varieties, if available in your area.\n"
              "• Avoid any injuries to the fruits during field work or by pests.\n"
              "• Apply measures to keep the canopy dry, such as suitable pruning.\n"
              "• Remove wild alternative hosts in the orchard.\n"
              "• Cut off all dying shoots 20 to 30 cm into healthy wood at the first sign of infection.\n"
              "• Remove and destroy (burn or bury) all infected fruits or branches to prevent the spread of infection.\n"
              "• Maintain a high hygiene standard.\n"
              "• Avoid excessive use of nitrogen fertilizers.\n"
              "• Monitor stored fruits for disease symptoms, as they are an important spreading vector.\n"
              "• During storage or transportation, keep fruits chilled to below 5°C to slow the growth of the fungus.",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            const Text(
              "What caused it?",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              "Blossom Blight and Fruit Rot are caused by the fungus *Monilinia fructigena*, which thrives in warm, humid weather. In some cases, other fungi may also be involved. These fungi hibernate in mummified fruits or shoots. Initial infection typically occurs when spores land on the anthers or pistils of flowers. The fungus then invades the internal tissues of the blossoms and reaches the twig to which the flower is attached. Flowers and twigs gradually develop blight and canker. Fungus spores can remain on fruit mummies and spread to other branches. Infected fruits, especially mummified ones, represent the most abundant source of infection.",
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
