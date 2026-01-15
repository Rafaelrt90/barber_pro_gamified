import 'package:flutter/material.dart';
import '../core/app_colors.dart';

class ExperienceBar extends StatelessWidget{

  final double progress;
  final int level;

  const ExperienceBar({
    super.key,
    required this.progress,
    required this.level,
  });

  @override
  Widget build(BuildContext context){
    return Column(
      crossAxisAlignment: .start,
      children: [
        Row(
          mainAxisAlignment: .spaceBetween,
          children: [
            Text(
              'Nível $level',
              style: const TextStyle(
                color: AppColors.primary,
                fontWeight: .bold
              )
            ),
            Text(
              '${(progress * 100).toInt()}% para o próximo nível',
              style: const TextStyle(color: AppColors.textSecondary, fontSize: 12),
            )
          ],
        ),
        const SizedBox(height: 8),
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: LinearProgressIndicator(
            value: progress,
            backgroundColor: AppColors.surface,
            color: AppColors.primary,
            minHeight: 10,
          ),
        ), 
      ],


    );
  }
}