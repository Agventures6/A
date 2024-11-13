import 'package:flutter/material.dart';

class AnthracnosePage extends StatelessWidget {
  const AnthracnosePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Anthracnose of Apple'),
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
              "Fungus",
              style: TextStyle(color: Colors.green, fontSize: 16),
            ),
            const SizedBox(height: 10),
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.asset(
                  'assets/pd_assets/seedling_stage/Picture1.png',
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
              "• Small, circular, reddish to purple spots on bark.\n"
              "• Development of cankers with upward curled margins.\n"
              "• Creamy white fungal growth in their center.\n"
              "• Brown spots and patches on fruits and leaves.",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            const Text(
              "The most typical symptom of an infection with anthracnose on fruit trees is the appearance of cankers on twigs and branches. "
              "At the early stages, they are characterized by the development of small circular spots, reddish to purple in color and particularly conspicuous when moist. "
              "As they enlarge, they become slightly elongated and sunken, and orange to brown in color. "
              "As the bark deteriorates, cracks develop on the margins and start to curl upwards. Creamy white fungal growth can be observed in their center. "
              "The canker can girdle the young twigs and kill them. Young leaves or fruits can also be affected and develop brown spots and patches, that in the case of fruits cause 'bull's eye rot' during storage. "
              "In particularly susceptible varieties, it can lead to defoliation of the tree and reduced vigor. This in turn leads to a reduction in fruit quality.",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            const Text(
              "Preventive Measures:",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              "• Plant healthy trees from certified pathogen-free sources.\n"
              "• Choose tree varieties that are less susceptible to the disease.\n"
              "• Monitor thoroughly new trees for signs of the disease.\n"
              "• Prune branches affected by a canker during winter pruning.\n"
              "• Prune out diseased limbs and trunks as soon as they are discovered.\n"
              "• Remove plant residues from the orchard.\n"
              "• Do not plant alternative hosts around the orchard.\n"
              "• Promote tree vigor through a good fertilization program and the use of fortifiers.\n"
              "• Ensure optimal drainage of the soil.",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            const Text(
              "What caused it?",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              "The symptoms are mainly caused by a fungus called Neofabra malicorticis, but other fungi from the same family can be involved. "
              "They can survive on infected plant debris or in the soil. It thrives under moist and warm conditions, with frequent rainfalls. During the spring, it resumes growth and starts to produce spores. "
              "These spores are then easily spread via irrigation water or rain splashes to other trees or plants. They can enter the trees through small injuries but can also penetrate uninjured bark. "
              "The canker grows actively only for 1 year, but the fungus continues producing large numbers of spores during 2 to 3 more years. Alternative hosts include most pome and stone fruits as well as hawthorn and mountain ash. "
              "All apple varieties are susceptible, to varying degrees, to the disease. Pear trees can also be affected.",
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
