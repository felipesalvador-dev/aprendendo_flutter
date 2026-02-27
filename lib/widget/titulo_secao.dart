import 'package:flutter/material.dart';

class TituloSecao extends StatelessWidget {
  final String titulo;

  const TituloSecao({super.key, required this.titulo});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        titulo,
        style: const TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}