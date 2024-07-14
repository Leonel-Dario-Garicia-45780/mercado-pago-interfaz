import 'package:ecomerce/estructura/FormRegister.dart';
import 'package:ecomerce/estructura/HomePage.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MecadoLibre());
}

class MecadoLibre extends StatelessWidget {
  const MecadoLibre({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      routes: {
        '/inicio': (context) => const HomePage(),
        '/registro' : (context) => const FormRegister(),
      },
    );
  }
}
