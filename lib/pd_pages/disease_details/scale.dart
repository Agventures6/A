import 'package:flutter/material.dart';

class TransparentScalePage extends StatelessWidget {
  const TransparentScalePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transparent Scale'),
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
                  'assets/pd_assets/seedling_stage/Picture6.png',
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
              "• Feeding on plant sap from leaves, stems, and fruits, causing chlorosis and tissue deformation.\n"
              "• Fruits may turn yellow to brown and fall prematurely.\n"
              "• Whole plant may be stunted or die back.",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            const Text(
              "Transparent Scale insects feed on plant sap, causing chlorosis and deformation on leaves, stems, and fruits. Heavy infestations may result in entire leaves turning yellow or brown and falling off. "
              "The presence of colonies resembling miniature fried eggs can often be seen on affected trees, which may also exhibit a bright yellow color visible from afar. Severe infestations can stunt the plant or even cause it to die back.",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            const Text(
              "Preventive Measures:",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              "• Avoid excessive nitrogen-rich fertilizers, as well-fed plants are more susceptible.\n"
              "• Prune trees to prevent dense canopies.\n"
              "• Dispose of infested leaves, branches, and twigs to control scale insects in nurseries.\n"
              "• Maintain high hygiene standards in plantations.\n"
              "• Avoid nearby planting of Bhendi (okra) and Abutilon indicum (Thuttur benda) to reduce infestation risks.",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            const Text(
              "What caused it?",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              "The coconut scale, Aspidiotus destructor, causes damage by feeding on plant sap. This insect mainly affects tropical trees such as mango, palm, papaya, ficus, avocado, and citrus, settling in colonies under a waxy cover. "
              "They inject toxic saliva into plant tissues while feeding, causing leaf deformation. Females lay whitish eggs that cover the surface in heavy infestations. The mobile 'crawler' nymphs can spread to distant areas by wind, insects, birds, or infested plant material. "
              "A typical life cycle of Aspidiotus destructor lasts 32-34 days.",
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
