import 'package:flutter/material.dart';
import '../core/app_colors.dart';
import '../widgets/experience_bar.dart';
import '../widgets/appointment_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        elevation: 0,
        title: const Text(
          'Barber Pro Dashboard',
          style: TextStyle(color: AppColors.primary, fontWeight: FontWeight.bold),
        ), // Text
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_none, color: AppColors.primary),
          ), // IconButton
        ], // actions
      ), // AppBar
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: .start, // Shorthand
          children: [
            // Seção de Perfil/Gamificação
            const Text(
              'Bem-vindo, Rafael!',
              style: TextStyle(
                color: AppColors.textPrimary,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ), // TextStyle
            ), // Text
            const SizedBox(height: 20),
            
            // Nosso componente de Experiência
            const ExperienceBar(progress: 0.7, level: 5),
            
            const SizedBox(height: 30),
            const Text(
              'Agendamentos de Hoje',
              style: TextStyle(
                color: AppColors.textPrimary,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ), // TextStyle
            ), // Text
            const SizedBox(height: 15),

            // Lista de agendamentos usando nosso componente
            const AppointmentCard(
              clientName: 'Bruno Oliveira',
              service: 'Corte de Cabelo + Barba',
              time: '14:30',
            ),
            const AppointmentCard(
              clientName: 'Marcos Souza',
              service: 'Corte Degradê',
              time: '15:45',
            ),
            const AppointmentCard(
              clientName: 'Diego Lima',
              service: 'Barba e Pigmentação',
              time: '17:00',
            ),
          ], // children
        ), // Column
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Aqui abriremos a tela de cadastro depois
          print("Novo agendamento clicado!");
        },
        backgroundColor: AppColors.primary,
        child: const Icon(Icons.add, color: Colors.white),
      ), // Floa // SingleChildScrollView
    ); // Scaffold
  }
}