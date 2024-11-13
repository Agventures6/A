import 'package:flutter/material.dart';

class CodlingMothPage extends StatelessWidget {
  const CodlingMothPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Codling Moth'),
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
                  'assets/pd_assets/fruiting_stage/Picture6.jpg',
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
              "• Boreholes on fruit, often encircled by a red ring and frass.\n"
              "• Tunnelling inside of fruit and rotting.\n"
              "• Caterpillar can sometimes be found near the core.\n"
              "• Premature ripening and dropping of fruit.",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            const Text(
              "Damage is caused by the feeding of the larvae in fruits. Shallow entry points are visible on the fruit skin and correspond to aborted entries, where the larvae died or gave up and tried another place. In case of successful entry, the larvae penetrate into the flesh of the fruit and can reach the core to feed on seeds. The entry holes are surrounded by a red ring and capped with reddish-brown, crumbly larval droppings called frass. When the fruit is cut open, the small white caterpillar can sometimes be found near the core. Damaged fruits tend to ripen and drop early or are simply unmarketable. If left uncontrolled, larvae can cause substantial damage, often infesting 20 to 90% of the fruits, depending on the variety and location. Deep entries can be a severe problem in stored fruit because they are colonized by bacteria and fungi, leading them to rot. Late maturing varieties are more likely to suffer severe damage than early varieties.",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            const Text(
              "More Info",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              "Scientific Name: Cydia pomonella",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            const Text(
              "Also found in: Apricot, Almond, Pear, Maize, Peach",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            const Text(
              "Preventive Measures",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              "• Choose early-maturing varieties.\n"
              "• Check plants and fruits regularly for signs of infestation, beginning 6-8 weeks after bloom.\n"
              "• Install pheromone traps to monitor and decimate the moths.\n"
              "• Fruit-bagging about 4 to 6 weeks after bloom can be used to protect the fruits.\n"
              "• Brush the larvae off the bark with a hard brush or a special bark scraper.\n"
              "• In smooth-barked varieties, a cardboard band can be installed around the trunk to trap moth larvae.\n"
              "• Remove tree debris and infested fruits as soon as possible and destroy them by deep burying or burning, away from the orchard.",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            const Text(
              "What caused it?",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              "The symptoms are caused by the larvae of *Cydia pomonella*. Adults are active only a few hours before and after sunset, and they mate when sunset temperatures exceed 16°C. The first generation of moths hatches in spring or early summer, just before bloom. One or two weeks after they start flying, the moths lay eggs on the fruits, usually one per fruit. Small larvae hatch from these eggs and chew on the skin, boring an opening into the fruits. It takes three to five weeks for the caterpillar to develop completely. Mature larvae drop off the fruits and find a place to hide, such as in cracks in the trunk. The second generation hatches in late summer or early autumn, and this generation damages the ripe fruits until they leave to find shelter in which to hibernate.",
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
