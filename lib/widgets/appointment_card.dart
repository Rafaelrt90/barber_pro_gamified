import 'package:flutter/material.dart';
import '../core/app_colors.dart';

class AppointmentCard extends StatelessWidget {
  final String clientName;
  final String service;
  final String time;

  const AppointmentCard({
    super.key,
    required this.clientName,
    required this.service,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.primary.withAlpha(50), width: 1), 
      ), // BoxDecoration
      child: Row(
        mainAxisAlignment: .spaceBetween, // Shorthand
        children: [
          Column(
            crossAxisAlignment: .start, // Shorthand
            children: [
              Text(
                clientName,
                style: const TextStyle(
                  color: AppColors.textPrimary,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ), // TextStyle
              ), // Text
              Text(
                service,
                style: const TextStyle(color: AppColors.textSecondary),
              ), // Text
            ], // children
          ), // Column
          Text(
            time,
            style: const TextStyle(
              color: AppColors.primary,
              fontWeight: FontWeight.bold,
            ), // TextStyle
          ), // Text
        ], // children
      ), // Row
    ); // Container
  }
}