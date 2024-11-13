import 'package:flutter/material.dart';

class DeadArmPage extends StatelessWidget {
  const DeadArmPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dead Arm'),
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
                  'assets/pd_assets/vegetative_stage/Picture5.jpg',
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
              "• Disease characterized by the internal rot of the trunk.\n"
              "• Cross-sections of the trunk show a wedge-shaped canker of the internal tissues.\n"
              "• Possible symptoms on leaves include the formation of chlorotic patches, necrotic margins and cupping of the lamina.",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            const Text(
              "Dead Arm disease causes internal trunk rot, leading to one or more arms of the tree dying. Cross-sections of the trunk show a wedge-shaped canker in the internal tissues. Fungal growth can sometimes appear as charcoal patches on the bark of the dead wood. The disease also affects the leaves, causing chlorotic patches, necrotic margins, and cupping of the lamina. Internodes are shortened, shoots grow stunted and chlorotic, and flower bunches may not develop or fall prematurely.",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            const Text(
              "More Info",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              "Scientific Name: Eutypa lata",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            const Text(
              "Preventive Measures",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              "• Monitor the field for signs of the disease and mark infected vines for removal.\n"
              "• Remove and destroy old vine residues in the field.\n"
              "• Avoid pruning during and after wet weather.\n"
              "• Cut the infected branch under the canker and allow the growth of a new healthy shoot.\n"
              "• Delayed pruning or double pruning are also effective methods to lower the infection.",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            const Text(
              "What caused it?",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              "Dead Arm disease is caused by the fungus *Eutypa lata*, typically affecting older vineyards and orchards. The fungus overwinters in contaminated trunks, and in the spring, its spores are released, favored by rain splashes. The spores are spread to the plant buds via wind and enter the plant through wounds or stomatal pores. Once inside, the fungus spreads slowly, affecting vascular tissue and potentially blocking water and nutrient transport, causing the shoots or branches to die. The disease thrives at temperatures ranging from 20 °C to 25 °C. It can also affect apple, pear, cherry, and walnut trees, as well as other trees like mountain ash, cork oak, or blackthorn, which can serve as a reservoir for the fungus.",
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
