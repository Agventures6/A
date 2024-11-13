import 'package:flutter/material.dart';

class BrownPage extends StatelessWidget {
  const BrownPage({super.key});

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
                  'assets/pd_assets/flowering_stage/Picture4.jpg',
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
              "Symptoms vary depending on the crop and are mainly characterized by a blossom blight and a fruit rot phase. The first symptom of blossom blight is the withering of flowers, which turn brown and often remain affixed to the twig in a gummy mass. Infections may extend into the twig and can girdle it. If shoots do not die off completely, the infection is carried over from the blossom to the developing leaves and fruits. Leaves dry out but remain on the tree throughout the whole year. Fruit rot can affect fruits hanging on trees as well as stored ones. Soft, brown patches appear on the fruits. As the patches grow, white or yellow pustules develop on the tan areas, sometimes in concentric circles. The fruits gradually dehydrate, rot, and mummify on the tree. Stored fruits may not develop pustules and may turn completely black.",
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
              "Also found in: Pear, Almond, Apricot, Cherry, Peach, Pistachio.",
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
              "• Implement a good nutrition program together with proper irrigation.\n"
              "• Provide good drainage and ventilation in the field.\n"
              "• Use nets to reduce damage from birds.\n"
              "• Monitor the orchard regularly and destroy damaged branches or mummified fruits.\n"
              "• Avoid wounding and splitting of the fruits.\n"
              "• Late pruning with methods that increase ventilation of foliage is recommended.\n"
              "• Plow deep to bury plant residues under the surface.\n"
              "• Store fruit in clean, dry rooms at temperatures around 5°C.\n"
              "• Check fruit in storage regularly, and destroy damaged ones.",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            const Text(
              "What caused it?",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              "Monilia laxa can infect many hosts, especially stone fruits like almond, apple, apricot, cherry, peach, pear, plum, or quince. This fungus overwinters in dry leaves or mummified fruits hanging from the trees, and its spores are spread via wind, water, or insects. The infection is favored by the presence of wounds on fruits (from birds, insects) or by the contact between healthy and infected parts. High humidity, rain, or dew and moderate temperatures (15° to 25°C) during bloom favor the infection process. The development of pustules on fruits is particularly conspicuous in these conditions. Symptoms on fruits appear from midsummer onwards, either while they are on the tree or in storage. Stored fruits may turn completely black and not develop pustules. Significant losses can occur, both in the orchards or in storage due to the high risk of transmission.",
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
