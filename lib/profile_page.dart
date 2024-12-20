import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'imp_pages/login_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  User? user;
  Map<String, dynamic>? userDetails;
  bool isLoading = true;
  bool isUserLoggedIn = true;

  @override
  void initState() {
    super.initState();
    checkUserLoggedIn();
  }

  // Check if user is logged in
  void checkUserLoggedIn() {
    user = _auth.currentUser;
    if (user == null) {
      // If no user is logged in, set flag to show message and button
      setState(() {
        isUserLoggedIn = false;
        isLoading = false;
      });
    } else {
      // Fetch user details from Firestore
      fetchUserDetails();
    }
  }

  // Fetch user details from Firestore
  void fetchUserDetails() async {
    if (user != null) {
      try {
        DocumentSnapshot userDoc = await FirebaseFirestore.instance
            .collection('users')
            .doc(user!.uid)
            .get();
        setState(() {
          userDetails = userDoc.data() as Map<String, dynamic>?;
          isLoading = false; // Loading completed
        });
      } catch (e) {
        setState(() {
          isLoading = false; // Loading failed
        });
        // Show an error message
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error fetching user details: $e')),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        backgroundColor: Colors.green,
      ),
      body: isLoading
          ? const Center(child: CircularProgressIndicator()) // Show loading while fetching data
          : isUserLoggedIn
              ? Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      const CircleAvatar(
                        radius: 50,
                        backgroundImage:
                            AssetImage('assets/avatar.png'), // You can update to network image
                      ),
                      const SizedBox(height: 20),
                      Text(
                        userDetails?['name'] ?? 'No name provided',
                        style: const TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        user?.email ?? 'No email provided',
                        style: const TextStyle(
                          fontSize: 16.0,
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(height: 20),
                      ListTile(
                        leading: const Icon(Icons.email),
                        title: const Text('E-mail'),
                        subtitle:
                            Text(userDetails?['email'] ?? 'No email provided'),
                      ),
                      const Divider(),
                      ListTile(
                        leading: const Icon(Icons.location_on),
                        title: const Text('Address'),
                        subtitle:
                            Text(userDetails?['uid'] ?? 'No address provided'),
                      ),
                      const Divider(),
                      ListTile(
                        leading: const Icon(Icons.settings),
                        title: const Text('Settings'),
                        onTap: () {
                          // Navigate to settings page
                        },
                      ),
                      const Divider(),
                      const Spacer(),
                      ElevatedButton(
                        onPressed: () async {
                          await _auth.signOut();
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                                builder: (context) => const LoginPage()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 40.0, vertical: 15.0),
                        ),
                        child: const Text('Logout'),
                      ),
                    ],
                  ),
                )
              : Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'You are not logged in.',
                        style: TextStyle(fontSize: 18.0),
                      ),
                      const SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                                builder: (context) => const LoginPage()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 40.0, vertical: 15.0),
                        ),
                        child: const Text('Go to Login Page'),
                      ),
                    ],
                  ),
                ),
    );
  }
}
