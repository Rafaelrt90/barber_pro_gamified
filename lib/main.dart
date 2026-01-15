import 'package:flutter/material.dart';
import 'core/app_colors.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Barber Pro',
      // Definindo o tema escuro como padrão
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: AppColors.background,
        primaryColor: AppColors.primary,
        // Configurando a fonte padrão para o app todo
        fontFamily: 'Roboto', 
      ), // ThemeData
      home: const HomeScreen(),
    ); // MaterialApp
  }
}