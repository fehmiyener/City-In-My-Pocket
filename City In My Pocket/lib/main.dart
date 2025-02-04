import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:pages_2_and_3/screens/signin_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
    apiKey: 'AIzaSyAinMcRAz3e7ofSZYKC7IdhZMGDihwKZ1k',
    appId: 'com.example.pages_2_and_3',
    messagingSenderId: '951029547563',
    projectId: 'projem-4cf5a',
  ));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My APP',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SignInScreen(),
    );
  }
}
