import 'package:flutter/material.dart';

class FruitTreeCankerPage extends StatelessWidget {
  const FruitTreeCankerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fruit Tree Canker'),
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
                  'assets/pd_assets/vegetative_stage/Picture2.jpg',
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
              "• Infections often begin in the form of reddish sunken lesions in twigs.\n"
              "• These lesions later grow into a canker that may girdle and kill the branches.\n"
              "• On larger branches, the dead bark is perennial and shows concentric rings and raised edges.\n"
              "• Occasionally, developing fruits show a dry 'eye rot' around the calyx.",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            const Text(
              "The infection starts as reddish sunken lesions on twigs, often around wounds or buds. These lesions later grow into cankers, which can girdle and kill the affected branches. The cankers on larger branches display concentric rings and raised edges with exposed dead wood in the center. The bark surrounding the canker is perennial. Occasionally, the infection affects developing fruits, which show a dry 'eye rot' around the calyx.",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            const Text(
              "More Info",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              "Scientific Name: Neonectria ditissima\n"
              "Also found in: Pear.",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            const Text(
              "Preventive Measures",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              "• Use resistant varieties, if available.\n"
              "• Avoid injury to plants during field work or harvest.\n"
              "• Ensure balanced fertilization and cutting.\n"
              "• Prune only during dry weather and always clean cutting tools thoroughly.\n"
              "• Monitor the orchard regularly and remove all affected branches and twigs.\n"
              "• Paint wounds with a protective wound seal product.\n"
              "• Ensure good field drainage.\n"
              "• Raise soil pH by liming if necessary.",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            const Text(
              "What caused it?",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              "Fruit tree canker is caused by the fungus Nectria galligena, which attacks the bark of various trees, including apple. The fungus spreads through water-borne spores in summer and airborne spores in winter and spring. The spores infect scarred tissues, such as pruning cuts, frost-damaged areas, scab lesions, and aphid infestations. The disease is more serious in moist, heavy, and acidic soils, with the optimal temperature for infection between 14-15.5°C. Prolonged moisture exposure (more than 6 hours) is also a critical factor for infection development.",
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
