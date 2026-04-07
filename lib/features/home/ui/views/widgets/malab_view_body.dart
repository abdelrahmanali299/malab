import 'package:flutter/material.dart';
import 'package:malab/features/home/ui/views/widgets/added_players_section.dart';
import 'package:malab/features/home/ui/views/widgets/admin_malab_add_time_section.dart';
import 'package:malab/features/home/ui/views/widgets/show_players_section.dart';

class MalabViewBody extends StatelessWidget {
  const MalabViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 20),
          AdminMalabAddTimeSection(),
          SizedBox(height: 20),
          ShowPlayersSection(),
          AddedPlayersSection(),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
