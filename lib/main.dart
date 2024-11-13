import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'firebase_options.dart';
import 'imp_pages/home.dart';
import 'imp_pages/intro.dart';
import 'imp_pages/login.dart'; 
import 'imp_pages/signup.dart';
import 'drone_view_page.dart';
import 'camera_page.dart';
import 'services/weather.dart';

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
      child: const Agventure()
    )
  );
}

class Agventure extends StatelessWidget {
  const Agventure({super.key});

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
            '/login': (context) => const LoginPage(),
            '/signup': (context) => const SignUpPage(),
            '/home': (context) => const HomePage(),
            '/drone': (context) => const DroneViewPage(),
            '/camera': (context) => const CameraPage(),
          },
        );
      },
    );
  }
}
