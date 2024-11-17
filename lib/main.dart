import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'services/firebase_options.dart';
import 'imp_pages/home_page.dart';
import 'imp_pages/intro_page.dart';
import 'imp_pages/login_page.dart'; 
import 'imp_pages/signup_page.dart';
import 'drone_view_page.dart';
import 'camera_page.dart';
import 'services/weather.dart';
import 'store_page.dart';
import 'treehealth_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => WeatherProvider()),
      ],
      child: const Agventures()
    )
  );
}

class Agventures extends StatelessWidget {
  const Agventures({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<User?>(
      future: FirebaseAuth.instance.authStateChanges().first,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator();  // Show a loading indicator while waiting
        }

        bool isLoggedIn = snapshot.hasData;
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Agventure',
          theme: ThemeData(
            primarySwatch: Colors.green,
          ),
          initialRoute: isLoggedIn ? '/home' : '/',
          routes: {
            '/': (context) => const IntroPage(),
            '/home': (context) => const HomePage(),
            '/tree': (context) => const TreeHealthPage(),
            '/store': (context) => const StorePage(),
            
            '/login': (context) => const LoginPage(),
            '/signup': (context) => const SignUpPage(),
            '/drone': (context) => const DroneViewPage(),
            '/camera': (context) => const CameraPage(),
          },
        );
      },
    );
  }
}
