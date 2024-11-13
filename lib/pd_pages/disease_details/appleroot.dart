import 'package:flutter/material.dart';

class AppleRootPage extends StatelessWidget {
  const AppleRootPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Apple Root'),
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
                  'assets/pd_assets/flowering_stage/Picture1.jpg',
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
              "• Poor terminal growth.\n"
              "• Yellowing of leaves.\n"
              "• Water-soaked weeping area on the trunk.\n"
              "• Orange/red-brown rot under the bark.",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            const Text(
              "The first symptoms of Apple Root disease on apple and pear trees appear on the foliage, characterized by poor terminal growth, chlorotic (yellowing) and wilting leaves. Trees may also have a stunted appearance. By this point, the rotting of the roots and crown is already advanced. Upon removing the bark, internal tissues show a defined area with an orange to red-brown tinge, which gradually enlarges and turns brown. The necrosis or rotting of the vascular tissues limits nutrient flow, leading to pale, wilting leaves, leaf drop, and stunted growth. As the disease progresses, the tree declines and eventually dies. Fruit rot can also occur, with dark-brown lesions affecting the entire fruit, particularly as the fruit matures.",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            const Text(
              "More Info",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              "Scientific Name: Phytophthora cactorum",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            const Text(
              "Preventive Measures",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              "• Choose resilient plant varieties, if available.\n"
              "• Provide good drainage to the fields.\n"
              "• Cut out infected twigs and branches.\n"
              "• Collect and macerate infected fruits in alleyways.\n"
              "• Avoid excessive weed growth near the trunk.\n"
              "• Add mulch around the tree trunk to avoid soil splash.\n"
              "• Expose the infected trunk by removing soil and let it dry, refill with fresh soil in autumn.\n"
              "• Only pick fruits above a certain height for storage.\n"
              "• Apply 5% urea spray to accelerate the maceration of leaves in the orchard.\n"
              "• Avoid contamination of fruits with mud splashes from tractors.",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            const Text(
              "What caused it?",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              "The symptoms of Apple Root disease are caused by the soil-borne fungus *Phytophthora cactorum*, which has a wide range of host plants. It thrives in wet soils and is particularly problematic in low-lying areas prone to flooding or moist field conditions. Warm weather favors the production of fungal spores, contributing to the infection. The fungus affects both apple and pear trees, though it is more common in apples. The infection primarily occurs before the flowering stage. Fallen fruits emitting fungal spores and infected transplants are major sources of the disease. Root and crown rot symptoms appear when the infection occurs below the soil line, while collar rot affects the lower trunk above the soil line. In both cases, foliar symptoms arise from rotting of internal tissues and the dysfunction of vascular tissues, resulting in tree decline.",
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
