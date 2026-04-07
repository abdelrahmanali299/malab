import 'package:flutter/material.dart';
import 'package:malab/features/home/ui/views/widgets/add_player.dart';

class ShowPlayersSection extends StatelessWidget {
  const ShowPlayersSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AspectRatio(
          aspectRatio: .65,
          child: Image.asset(
            'assets/images/football_stadium.jpg',
            fit: BoxFit.scaleDown,
          ),
        ),
        //first team
        Positioned(top: 70, left: 0, right: 0, child: AddPlayer()),
        Positioned(top: 110, right: 20, child: AddPlayer()),
        Positioned(top: 110, left: 20, child: AddPlayer()),
        Positioned(top: 140, left: 90, child: AddPlayer()),
        Positioned(top: 140, right: 90, child: AddPlayer()),

        //second team
        Positioned(bottom: 70, left: 0, right: 0, child: AddPlayer()),
        Positioned(bottom: 110, right: 20, child: AddPlayer()),
        Positioned(bottom: 110, left: 20, child: AddPlayer()),
        Positioned(bottom: 140, left: 90, child: AddPlayer()),
        Positioned(bottom: 140, right: 90, child: AddPlayer()),
      ],
    );
  }
}
