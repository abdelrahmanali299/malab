import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:malab/core/services/prefs_service.dart';
import 'package:malab/features/auth/ui/views/sign_in_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();

  await PrefsService.init();

  runApp(const Malab());
}

class Malab extends StatelessWidget {
  const Malab({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primarySwatch: Colors.green,
      ),
      debugShowCheckedModeBanner: false,
      home: SignInView(),
    );
  }
}
