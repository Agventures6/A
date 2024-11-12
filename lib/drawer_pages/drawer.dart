import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: const Text('Jana'),
            accountEmail: const Text('+919500461842'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset(
                  'assets/avatar.png', // Replace with actual avatar path
                  fit: BoxFit.cover,
                  width: 90,
                  height: 90,
                ),
              ),
            ),
            decoration: const BoxDecoration(
              color: Colors.green,
            ),
          ),
          ListTile(
            title: const Text('Basic'),
            trailing: TextButton(
              onPressed: () {}, 
              child: const Text(
                'Upgrade',
                style: TextStyle(color: Colors.blue),
              ),
            ),
          ),
          const Divider(),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Text('Account', style: TextStyle(fontWeight: FontWeight.bold)),
          ),
          ListTile(
            leading: const Icon(Icons.shopping_bag),
            title: const Text('My Orders'),
            onTap: () {
              // Navigate to My Orders page
            },
          ),
          ListTile(
            leading: const Icon(Icons.air),
            title: const Text('My Drone Orders'),
            onTap: () {
              // Navigate to My Drone Orders page
            },
          ),
          ListTile(
            leading: const Icon(Icons.location_on),
            title: const Text('My Addresses'),
            onTap: () {
              // Navigate to My Addresses page
            },
          ),
          ListTile(
            leading: const Icon(Icons.science),
            title: const Text('My Soil Test'),
            onTap: () {
              // Navigate to My Soil Test page
            },
          ),
          const Divider(),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Text('Feedback and Information', style: TextStyle(fontWeight: FontWeight.bold)),
          ),
          ListTile(
            leading: const Icon(Icons.contact_support),
            title: const Text('Contact Us'),
            onTap: () {
              // Navigate to Contact Us page
            },
          ),
          ListTile(
            leading: const Icon(Icons.info_outline),
            title: const Text('About'),
            onTap: () {
              // Navigate to About page
            },
          ),
          ListTile(
            leading: const Icon(Icons.share),
            title: const Text('Share App'),
            onTap: () {
              // Implement share functionality
            },
          ),
          ListTile(
            leading: const Icon(Icons.star_rate),
            title: const Text('Rate App'),
            onTap: () {
              // Implement rate functionality
            },
          ),
          ListTile(
            leading: const Icon(Icons.local_shipping),
            title: const Text('Shipping Policy'),
            onTap: () {
              // Navigate to Shipping Policy page
            },
          ),
          ListTile(
            leading: const Icon(Icons.assignment_return),
            title: const Text('Return Policy'),
            onTap: () {
              // Navigate to Return Policy page
            },
          ),
          ListTile(
            leading: const Icon(Icons.receipt),
            title: const Text('Refund Policy'),
            onTap: () {
              // Navigate to Refund Policy page
            },
          ),
        ],
      ),
    );
  }
}
