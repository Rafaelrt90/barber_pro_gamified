import 'package:flutter/material.dart';
import '../core/app_colors.dart';

class LevelBadge extends StatelessWidget {
  final String label;

  const LevelBadge({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      decoration: BoxDecoration(
        color: AppColors.primary.withAlpha(30), 
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AppColors.primary, width: 1),
      ), 
      child: Text(
        label.toUpperCase(),
        style: const TextStyle(
          color: AppColors.primary,
          fontSize: 10,
          fontWeight: FontWeight.bold,
          letterSpacing: 1.2,
        ), 
      ), 
    ); 
  }
}