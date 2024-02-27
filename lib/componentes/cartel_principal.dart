import 'package:flutter/material.dart';
import '../componentes/nav_bar_superior.dart';

class CartelPrincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        cabecera(),
        infoMascota(),
        botonera(),
      ],
    );
  }

  Widget cabecera() {
    return Stack(
      children: [
        Image.network(
          "https://th.bing.com/th/id/OIP.w_8W2A9fVNOBJqDa9AW19gAAAA?rs=1&pid=ImgDetMain",
          height: 350.0,
          fit: BoxFit.cover,
        ),
        Container(
          width: double.infinity,
          height: 350.0,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.center,
              end: Alignment.bottomCenter,
              colors: [Colors.black38, Colors.black],
            ),
          ),
        ),
        SafeArea(child: NavBarSuperior()),
      ],
    );
  }

  Widget infoMascota() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Nosfe",
            style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8.0),
          Text(
            "Raza: Yorkshire Terrier",
            style: TextStyle(fontSize: 16.0),
          ),
          SizedBox(height: 8.0),
          Text(
            "Edad: 2 años",
            style: TextStyle(fontSize: 16.0),
          ),
          SizedBox(height: 8.0),
          Text(
            "Descripción: Un perro llegado del infierno con ganas de sangre.",
            style: TextStyle(fontSize: 16.0),
          ),
        ],
      ),
    );
  }

  Widget botonera() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 1.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
            onPressed: () {},
            child: Text('Adoptar'),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text('Contactar'),
          ),
        ],
      ),
    );
  }
}