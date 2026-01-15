import 'package:flutter/material.dart';
import '../core/app_colors.dart';

class AddAppointmentModal extends StatelessWidget {
  const AddAppointmentModal({super.key});

  @override
  Widget build(BuildContext context) {
    
    final keyboardSpace = MediaQuery.of(context).viewInsets.bottom;

    return Padding(
      padding: EdgeInsets.fromLTRB(24, 24, 24, 24 + keyboardSpace),
      child: Column(
        mainAxisSize: .min, // Shorthand
        crossAxisAlignment: .stretch, // Shorthand
        children: [
          const Text(
            'Novo Agendamento',
            style: TextStyle(
              color: AppColors.textPrimary,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ), 
          ), 
          const SizedBox(height: 20),
          
          TextField(
            style: const TextStyle(color: AppColors.textPrimary),
            decoration: InputDecoration(
              labelText: 'Nome do Cliente',
              labelStyle: const TextStyle(color: AppColors.textSecondary),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: AppColors.textSecondary),
                borderRadius: BorderRadius.circular(10),
              ), 
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: AppColors.primary),
                borderRadius: BorderRadius.circular(10),
              ), 
            ), 
          ), 
          
          const SizedBox(height: 20),
          
          ElevatedButton(
            onPressed: () => Navigator.pop(context),
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primary,
              padding: const EdgeInsets.symmetric(vertical: 16),
              // CORREÇÃO AQUI:
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ), 
            ), 
            child: const Text(
              'Confirmar Horário',
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ), 
          ),
        ], // children
      ), 
    ); 
  }
}