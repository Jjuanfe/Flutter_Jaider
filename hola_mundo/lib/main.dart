import 'package:flutter/material.dart';
import 'package:hola_mundo/presentation/screens/counter_functions_screen.dart';
//import 'package:hola_mundo/presentation/screens/counter_screen.dart';

void main() {
  runApp( MyApp());
}
//Para convertir un stateless a un stateful se le da ctrl+click a stateless
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return CounterFunctionScreen();
  }
}