import 'package:flutter/material.dart';
import 'package:malab/features/home/ui/views/widgets/malab_view.dart';

void main() {
  runApp(const Malab());
}

class Malab extends StatelessWidget {
  const Malab({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      debugShowCheckedModeBanner: false,
      home: MalabView(),
    );
  }
}
