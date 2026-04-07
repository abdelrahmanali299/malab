import 'package:flutter/material.dart';
import 'package:malab/features/home/ui/views/widgets/malab_view_body.dart';

class MalabView extends StatelessWidget {
  const MalabView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: const MalabViewBody(),
        ),
      ),
    );
  }
}
