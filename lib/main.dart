import 'package:flutter/material.dart';
import 'paginas/inicio.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey[200], // Color de fondo de la aplicación
        textTheme: TextTheme(
          bodyText1: TextStyle(color: Colors.grey[800]), // Color del texto principal
          bodyText2: TextStyle(color: Colors.grey[800]), // Color del texto secundario
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: Colors.pink[200], // Color de fondo de los botones elevados
            onPrimary: Colors.white, // Color del texto de los botones elevados
          ),
        ),
      ),
      home: InicioPage(),
    );
  }
}