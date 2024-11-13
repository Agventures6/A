import 'package:flutter/material.dart';

class SpiderMitesPage extends StatelessWidget {
  const SpiderMitesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Spider Mites'),
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
                  'assets/pd_assets/fruiting_stage/Picture5.jpg',
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
              "• Tiny spots on leaves.\n"
              "• Small webs between stem and leaf.\n"
              "• Dried out leaves.\n"
              "• Tiny, pale green, oval mites.",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            const Text(
              "Spider mites feeding causes white to yellow speckles to form on the upper surface of the leaves. As the infestation becomes more severe, leaves appear bronzed or silvery first and then become brittle, rip open between the leaf veins, and finally fall off. Spider mite eggs can be found on the undersides of leaves. The spider mite itself nests in a cocoon resembling webbing on the underside of the leaves. Infected plants will be covered by a web spun by the spider mites. Shoot tips can become bald, and side shoots begin to grow. In cases of heavy damage, the quantity and quality of fruits are reduced.",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            const Text(
              "More Info",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              "Scientific Name: Tetranychidae",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            const Text(
              "Also found in: Sorghum, Potato, Bitter Gourd, Soybean, Cassava, Zucchini, Banana, Citrus, Onion, Almond, Black & Green Gram, Pea, Peach, Tomato, Grape, Brinjal, Okra, Papaya, Strawberry, Millet, Tobacco, Pigeon Pea & Red Gram, Cotton, Cucumber, Cabbage, Rose, Capsicum & Chilli, Maize, Wheat, Sugarcane, Carrot, Lettuce, Pumpkin, Melon, Currant, Peanut, Bean, Pomegranate.",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            const Text(
              "Preventive Measures",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              "• Plant resistant varieties if available.\n"
              "• Monitor your field regularly and check the underside of leaves. Alternatively, shake a few insects off the leaf surface onto a white sheet of paper.\n"
              "• Remove affected leaves or plants.\n"
              "• Remove nettles and other weeds from fields.\n"
              "• Apply water to pathways and other dusty areas at regular intervals to avoid dusty conditions in the field.\n"
              "• Water your crop regularly as stressed trees and plants are less tolerant to spider mite damage.\n"
              "• Control the use of insecticides to allow beneficial insects to thrive.",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            const Text(
              "What caused it?",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              "Damage is caused by spider mites from the genus Tetranychus, mainly T. urticae and T. cinnabarinus. The adult female is 0.6 mm long, pale green with two darker patches on its oval body, and long hairs on the back. Overwintering females are reddish. In spring, the females lay globular and translucent eggs on the underside of the leaves. The nymphs are pale green with darker markings on the dorsal side. The mites protect themselves with a cocoon on the underside of the leaf blades. The spider mite thrives in dry and hot climates and will produce up to 7 generations in one year in these conditions. There is a wide range of alternative hosts, including weeds.",
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
