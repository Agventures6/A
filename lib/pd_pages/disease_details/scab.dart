import 'package:flutter/material.dart';

class AppleScabPage extends StatelessWidget {
  const AppleScabPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Apple Scab'),
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
                  'assets/pd_assets/vegetative_stage/Picture3.jpg',
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
              "• Small, olive-green or brown spots on leaves.\n"
              "• Later form large brown patches.\n"
              "• Leaf deformation and premature fall off.\n"
              "• Dark brown, raised, hard areas on fruits.\n"
              "• Distortion and cracking of fruits.",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            const Text(
              "Apple scab symptoms first appear in spring with small, olive-green spots on leaves. These spots grow into large brown patches, causing leaf deformation and premature shedding. On the fruits, dark brown, raised, corky patches form, restricting fruit growth and leading to distortion and cracking. While light infestations don't drastically affect fruit quality, the scabs create an entry point for rotting pathogens, reducing storage capacity and overall quality.",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            const Text(
              "More Info",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              "Scientific Name: Venturia inaequalis",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            const Text(
              "Preventive Measures",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              "• Use tolerant or resistant varieties.\n"
              "• Monitor orchards for signs of the disease.\n"
              "• Pick up affected leaves, shoots, and fruits.\n"
              "• Rake all the fallen leaves from around your trees after harvest.\n"
              "• Apply 5% urea to leaves in autumn to enhance decomposition and obstruct the fungus lifecycle.\n"
              "• Mow excessive leaf litter to speed up tissue breakdown.\n"
              "• Ensure proper pruning to allow for more air circulation.\n"
              "• Water in the evening or early morning hours and avoid overhead irrigation.\n"
              "• Apply lime after leaf drop to increase soil pH.\n"
              "• Spread mulch under trees, keeping it away from the trunk.",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            const Text(
              "What caused it?",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              "Apple scab is caused by the fungus Venturia inaequalis, which survives the winter on infected leaves, buds, and lesions on wood. In spring, the fungus produces spores that are carried by the wind and land on developing leaves and fruits, initiating new infections. The fungus is highly susceptible to humid conditions and a wetting period of the leaves or fruits. Apple varieties, including Gala, are particularly vulnerable to this disease.",
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
