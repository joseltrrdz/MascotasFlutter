import 'package:flutter/material.dart';

class NavBarSuperior extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            // Implementar acción para abrir menú lateral
          },
        ),
        Image.network(
          "https://th.bing.com/th/id/OIP.BRvJsA2e_eeR8uzj54wTbgHaHa?rs=1&pid=ImgDetMain",
          width: 50.0,
          height: 50.0,
        ),
        IconButton(
          icon: Icon(Icons.notifications),
          onPressed: () {
            // Implementar acción para abrir notificaciones
          },
        ),
      ],
    );
  }
}