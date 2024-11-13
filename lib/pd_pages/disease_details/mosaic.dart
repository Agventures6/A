import 'package:flutter/material.dart';

class MosaicPage extends StatelessWidget {
  const MosaicPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Apple Mosaic Virus'),
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
                  'assets/pd_assets/seedling_stage/Picture2.png',
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
              "• Bright yellow spots or bands on leaves.\n"
              "• Symptoms appear first on single shoots.\n"
              "• Reduced tree growth.",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            const Text(
              "Initially, leaves start to display bright yellow spots or bands along the major veins on new leaves on a single shoot. "
              "As the disease spreads, these symptoms appear on leaves of all shoots. Affected leaves may drop prematurely. "
              "The growth of trees is being reduced.",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            const Text(
              "Preventive Measures:",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              "• Use certified virus-free material.\n"
              "• Do not use slips from infected trees for grafting.\n"
              "• Use thermotherapy for 24 to 32 days at 38°C to limit the outbreak of the virus.\n"
              "• Remove infected plant parts and weeds on your field.",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            const Text(
              "What caused it?",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              "The symptoms are caused by the Apple Mosaic Virus, which has a wide host range, including woody and herbaceous plants. "
              "The virus has no natural vector. Infected branches transmit the virus when used as slips for grafting. The virus can also be transmitted through the roots. "
              "Symptoms are more pronounced in years with moderate springtime temperatures.",
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
