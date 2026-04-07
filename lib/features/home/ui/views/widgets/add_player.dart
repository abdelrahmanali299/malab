import 'package:flutter/material.dart';

class AddPlayer extends StatelessWidget {
  const AddPlayer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.cyan,
        border: Border.all(color: Colors.white, width: 2),
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.white.withValues(alpha: .7),
            blurRadius: 10,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Icon(Icons.person_add_alt, color: Colors.white, size: 30),
    );
  }
}
