import 'package:flutter/material.dart';

class StecklenbergerPage extends StatelessWidget {
  const StecklenbergerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stecklenberger Virus'),
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
              "Virus",
              style: TextStyle(color: Colors.green, fontSize: 16),
            ),
            const SizedBox(height: 10),
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.asset(
                  'assets/pd_assets/seedling_stage/Picture3.png',
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
              "• Discoloration and local necrosis of foliar tissue, flowers, buds, and shoots.\n"
              "• Yellow or chlorotic blotching or mottling on leaves.\n"
              "• Perforation and shredding of young leaf blades in some cases.",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            const Text(
              "Symptoms can vary from very severe to mild, or even symptomless, depending on the virus involved, the tree species or variety, and environmental conditions. "
              "They appear on leaves, buds, blossoms, shoots, or fruits, often characterized by discoloration or localized necrosis. "
              "Individual branches may exhibit delayed budbreak and leaf development, with terminal dieback in some cases. "
              "Common symptoms include chlorotic or bright yellow blotching, chlorotic to yellow mottling, ringspots, lines, or 'oak leaf' patterns on developing leaves. "
              "In severe cases, the chlorotic areas may become necrotic, leading to shredding, deformation, or 'shot-hole' effects. "
              "Fruit maturity may be delayed, and affected fruits may be unmarketable due to visible markings.",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            const Text(
              "Preventive Measures:",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              "• Use certified virus-free seeds.\n"
              "• Use virus-free wood as grafting support.\n"
              "• Regularly monitor the orchard for symptoms of the disease.\n"
              "• Remove diseased plant material immediately, and bury or burn it.\n"
              "• Avoid using commercial bee-hives previously employed in other orchards.\n"
              "• Maintain a high standard of hygiene.\n"
              "• Avoid planting new trees near infected orchards.",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            const Text(
              "What caused it?",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              "The PNRSV virus causes necrotic ringspot in many species of Prunus, often followed by symptom recovery. "
              "It is mainly spread through plant propagation, particularly with infected nursery stocks and root grafting. "
              "The virus can also infect pollen and seeds, facilitating transmission through pollinated plants. "
              "Bees or other insects can introduce infected pollen into orchards, indirectly serving as vectors. "
              "PNRSV can also be transmitted by thrips, although the significance of thrips in the virus spread is not fully understood. "
              "The virus infects all flower parts, allowing seeds to become infected from an infected pollen grain, ovule, or both. "
              "The virus can even infect the fruits, affecting the tree's yield and the marketability of the fruits.",
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
