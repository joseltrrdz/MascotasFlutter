import 'package:flutter/material.dart';
import '../componentes/cartel_principal.dart';
import '../componentes/lista_mascotas.dart';

class InicioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CartelPrincipal(),
            SizedBox(height: 20.0),
            Text(
              "Mascotas Disponibles",
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            ListaMascotas(),
          ],
        ),
      ),
    );
  }
}