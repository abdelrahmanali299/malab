import 'package:flutter/material.dart';
import 'package:malab/features/home/ui/views/widgets/adding_date_section.dart';
import 'package:malab/features/home/ui/views/widgets/show_date_and_time_section.dart';

class AdminMalabAddTimeSection extends StatelessWidget {
  const AdminMalabAddTimeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withValues(alpha: .7),
            blurRadius: 10,
            spreadRadius: 0.1,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(children: [AddingDateSection(), ShowDateAndTimeSection()]),
    );
  }
}
