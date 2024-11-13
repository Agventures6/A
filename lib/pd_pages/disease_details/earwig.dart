import 'package:flutter/material.dart';

class EuropeanEarwigPage extends StatelessWidget {
  const EuropeanEarwigPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('European Earwig'),
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
                  'assets/pd_assets/seedling_stage/Picture7.png',
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
              "• Chewed edges on leaves.\n"
              "• Irregular holes on leaves and tender shoot tips.\n"
              "• Shallow, irregular holes on soft fruits.\n"
              "• Shiny brown insects with forcep-like structures at their back.",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            const Text(
              "Earwigs are commonly found in gardens, orchards, and fields, where they feed on foliage and fruits. Leaves with chewed edges or irregular holes are often a sign of earwig activity. "
              "While this damage is usually not significant on mature trees, it can stunt the growth of young seedlings and tender shoot tips. On soft fruits, earwigs may create shallow, irregular holes. "
              "Their feeding is often accompanied by small black dots of excrement near the feeding sites. As earwigs are most active at night, inspect plants after sunset with a flashlight if unsure of the cause of damage.",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            const Text(
              "Preventive Measures",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              "• Monitor the orchard regularly for earwig presence.\n"
              "• Remove weeds from around the base of trees.\n"
              "• Keep the orchard clear of pruned branches, loose bark, and debris where earwigs could nest.\n"
              "• Remove tree parts that contact soil to prevent earwig access.\n"
              "• Use sticky tape around the base of trees to prevent earwigs from climbing.",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            const Text(
              "What caused it?",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              "European Earwigs are shiny brown insects about 0.5 inches long, identified by forcep-like structures at the end of their abdomen. They hibernate in the soil and emerge in favorable conditions. "
              "Females lay eggs twice per season, resulting in two nymph hatchings, typically in late spring and early summer. Earwigs are nocturnal and prefer dark, cool, moist hiding spots during the day. "
              "They may shelter under fallen branches, fruits, or dense weeds. Earwigs are omnivores, feeding on plant foliage and small insects like aphids, and their impact can vary as both pests and beneficial insects depending on their location.",
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
