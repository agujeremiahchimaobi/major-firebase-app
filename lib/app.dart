import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:main_firebase_app/screens/splashScreen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: GateWay(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class GateWay extends StatefulWidget {
  const GateWay({super.key});

  @override
  State<GateWay> createState() => _GateWayState();
}

class _GateWayState extends State<GateWay> {
  final Future<FirebaseApp> initialization = Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: initialization,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Container();
        }
        if (snapshot.connectionState == ConnectionState.done) {
          return const SplashScreen();
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
