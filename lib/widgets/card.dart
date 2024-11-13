import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String title;
  final String imagePath;
  final Widget destinationPage;

  const CustomCard({
    required this.title,
    required this.imagePath,
    required this.destinationPage,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => destinationPage,
          ),
        );
      },
      child: Container(
        width: 150, // Set a fixed width
        height: 150, // Set a fixed height
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Card(
          color: Colors.teal.shade100,
          elevation: 4.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.vertical(top: Radius.circular(10.0)),
                    image: DecorationImage(
                      image: AssetImage(imagePath),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14.0,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
