import 'package:flutter/material.dart';

class AphidsPage extends StatelessWidget {
  const AphidsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Aphids'),
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
              "Insect Pest",
              style: TextStyle(color: Colors.green, fontSize: 16),
            ),
            const SizedBox(height: 10),
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.asset(
                  'assets/pd_assets/seedling_stage/Picture5.png',
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
              "• Curled and deformed leaves.\n"
              "• Small insects under the leaves and shoots.\n"
              "• Stunted growth.",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            const Text(
              "Aphid infestation may cause leaves and shoots to curl, wilt, or turn yellow. Severe infestations stunt plant growth, causing a general decline in plant vigor. "
              "Aphids also produce honeydew, which attracts ants and fosters mold growth, increasing the risk of fungal infections. Aphids can spread viruses between plants, even in small numbers.",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            const Text(
              "Preventive Measures:",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              "• Maintain a variety of plant species around fields.\n"
              "• Remove plant debris from previous crops.\n"
              "• Use reflective mulches to repel aphids.\n"
              "• Regularly monitor fields for signs of infestation.\n"
              "• Remove infected plant parts immediately.\n"
              "• Control weed growth in and around fields.\n"
              "• Avoid over-watering and over-fertilizing plants.\n"
              "• Control ants that protect aphids using sticky bands.\n"
              "• Prune branches or remove bottom leaves to improve air circulation.\n"
              "• Use protective nets if possible.\n"
              "• Limit insecticide use to avoid harming beneficial insects.",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            const Text(
              "What caused it?",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              "Aphids are small, soft-bodied insects that range in size from 0.5 to 2 mm and vary in color from yellow, brown, and red to black, depending on the species. "
              "They tend to cluster on the underside of young leaves and shoots, feeding on plant fluids. Optimal conditions for aphid growth are dry and warm climates. "
              "Natural enemies often reduce aphid populations after an initial spring or early summer invasion. However, aphids can transmit viruses to plants, causing secondary diseases.",
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
