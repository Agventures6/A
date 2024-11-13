import 'package:flutter/material.dart';

class BacterialCankerPage extends StatelessWidget {
  const BacterialCankerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bacterial Canker'),
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
              "Bacterial Disease",
              style: TextStyle(color: Colors.green, fontSize: 16),
            ),
            const SizedBox(height: 10),
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.asset(
                  'assets/pd_assets/seedling_stage/Picture4.png',
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
              "• Water-soaked spots on leaves.\n"
              "• Spots become dry and fall, causing 'shot holes'.\n"
              "• Dark-brown, flat spots on fruits.\n"
              "• Bark of branches can also be affected.",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            const Text(
              "Infected leaves show small, round, water-soaked spots about 1-3 mm in diameter. "
              "As leaves mature, spots become brown, dry, and brittle, eventually falling out and giving a 'shot-hole' or tattered appearance. "
              "Infected fruit show flat, dark-brown spots, sometimes with spongy underlying tissue. "
              "Flowers may appear water-soaked, turn brown, wilt, and remain on the twig. "
              "Characteristic cankers develop at the base of infected spurs, often producing a gummy ooze. "
              "Cankers are first seen in late winter or early spring and can produce gum that breaks through the bark. "
              "In severe cases, if the infection encircles a branch, it will die rapidly.",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            const Text(
              "Preventive Measures:",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              "• Use seeds or shoots only from certified nurseries.\n"
              "• Plant resilient varieties if available.\n"
              "• Choose wind-exposed locations to decrease humidity.\n"
              "• Regularly monitor the orchard for symptoms.\n"
              "• Avoid nitrogen-rich fertilizers but fertilize as needed.\n"
              "• Cut off all cankered areas down to healthy wood.\n"
              "• Prune after harvest so wounds can heal.\n"
              "• Seal pruning wounds with appropriate paint.\n"
              "• Destroy affected material by burning or disposing in a landfill.",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            const Text(
              "What caused it?",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              "Bacterial canker is caused by two related bacteria that infect Prunus species such as plums and cherries. "
              "These bacteria generally reside on leaf surfaces. During wet spring or early summer weather, they enter the leaf through natural pores, "
              "causing infections that appear as small diseased patches, which turn necrotic as leaves mature. "
              "As the leaf grows, these necrotic patches tear and fall out. Cankers develop on shoots when bacteria enter through wounds or leaf scars in autumn. "
              "The bacteria remain dormant during summer and in cold months, resuming activity in spring to rapidly spread and kill bark tissue.",
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
