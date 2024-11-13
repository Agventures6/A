import 'package:flutter/material.dart';

class PowderyMildewPage extends StatelessWidget {
  const PowderyMildewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Powdery Mildew'),
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
                  'assets/pd_assets/vegetative_stage/Picture1.jpg',
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
              "• Whitish spots on leaves, stems, and sometimes fruits.\n"
              "• White covering on the upper or underside of the leaves.\n"
              "• Stunted growth.\n"
              "• Leaves shrivel and fall off.",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            const Text(
              "Powdery mildew infection starts as circular, powdery white spots on leaves, stems, and sometimes fruits. The fungus typically covers the upper side of the leaves, but it can also grow on the underside. As the infection progresses, the fungus interferes with photosynthesis, causing leaves to yellow, dry out, twist, or become disfigured. In later stages, buds and growing tips may become distorted.",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            const Text(
              "More Info",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              "Scientific Name: Erysiphaceae\n"
              "Also found in: Zucchini, Apricot, Bean, Peanut, Pear, Sorghum, Chickpea, Ornamental plants, Sugarcane, Lettuce, Pumpkin, Melon, Maize, Cotton, Cucumber, Cabbage, Tomato, Onion, Potato, Coffee, and many others.",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            const Text(
              "Preventive Measures",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              "• Use resistant or tolerant varieties.\n"
              "• Plant crops with sufficient spacing for good ventilation.\n"
              "• Monitor fields regularly for disease incidence.\n"
              "• Remove infected leaves as soon as spots appear.\n"
              "• Avoid touching healthy plants after touching infected ones.\n"
              "• Apply a thick layer of mulch to prevent spore dispersal.\n"
              "• Practice crop rotation with non-susceptible crops.\n"
              "• Fertilize with a balanced nutrient supply.\n"
              "• Avoid extreme temperature changes.\n"
              "• Plow the soil thoroughly after harvest to bury plant residues.\n"
              "• Remove plant residues after harvest.",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            const Text(
              "What caused it?",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              "Powdery mildew is caused by fungal spores that overwinter in leaf buds and other plant debris. The spores are spread by wind, water, and insects. Though it is a fungus, powdery mildew can thrive in dry conditions. It survives best at temperatures between 10-12°C, but optimal growth occurs at 30°C. Unlike downy mildew, powdery mildew spreads more rapidly with small amounts of rainfall and morning dew.",
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
