import 'package:flutter/material.dart';

class SilverLeafPage extends StatelessWidget {
  const SilverLeafPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Silver Leaf'),
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
                  'assets/pd_assets/vegetative_stage/Picture4.jpg',
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
              "• Faint, silvery sheen on foliage.\n"
              "• Stems and twigs turn dark brown and die back.\n"
              "• Bracket-shaped fungi with whitish woolly upper surface and purple-brown lower surface on bark.",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            const Text(
              "Silver Leaf disease initially manifests as a faint silvery sheen on the foliage, often beginning on a single branch and spreading over time. As the disease progresses, the affected leaves may split, with the margins and midrib turning brown. The stems and twigs under the bark turn dark brown and eventually die back. From late summer, flat, bracket-shaped fungi with a whitish woolly upper surface and purple-brown lower surface appear on the bark of dead branches. These fungi are soft and slippery when wet, and brittle and shriveled when dry.",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            const Text(
              "More Info",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              "Scientific Name: Chondrostereum purpureum",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            const Text(
              "Preventive Measures",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              "• Only work with clean, disinfected tools.\n"
              "• Protect trees from unnecessary injuries.\n"
              "• Monitor the orchard regularly.\n"
              "• Routine pruning in late spring or summer avoids the main infection phase.\n"
              "• Avoid pruning during wet weather conditions, which favor infection.\n"
              "• Cover wounds with wound dressing to avoid the germination of spores.\n"
              "• Dispose of the pruned material (burning or burying) immediately, as fruiting bodies form continuously.\n"
              "• Exclude alternative hosts like willows and poplars from and around the orchard.",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            const Text(
              "What caused it?",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              "The symptoms are caused by the fungus Chondrostereum purpureum. This fungus produces fruiting bodies on dead branches and trunks, releasing spores that are carried by the wind to healthy trees and shrubs. The spores enter through wounds, primarily caused by pruning, and slowly kill the wood. The fungus secretes a toxin that travels up to the leaves, damaging the tissues and causing them to separate, giving the leaves a silvery appearance. The fungus also produces new fruiting bodies on dead wood, continuing the cycle of infection. The disease thrives in drizzly, rainy, foggy, or humid conditions, with no wind or sun.",
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
