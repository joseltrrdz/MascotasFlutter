import 'package:flutter/material.dart';

class ListaMascotas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          MascotaItem(
            imagenUrl: "https://th.bing.com/th/id/R.df756a251a62d8fb09b9cf66711c1c09?rik=SKtoKItSIRDsqQ&riu=http%3a%2f%2fcms.softindustries.com%2fmultimedia%2f12%2f200808%2fBichon-maltes_1_2.jpg&ehk=Gd8ncrL%2ffQ5KRPk3D5iiXPywZz1Ih8YwBHfkzAM8z8E%3d&risl=&pid=ImgRaw&r=0",
            nombre: "Luna",
            edad: "1 año",
            raza: "Terrier",
          ),
          MascotaItem(
            imagenUrl: "https://images.unsplash.com/photo-1507146426996-ef05306b995a",
            nombre: "Max",
            edad: "3 años",
            raza: "Perro Golden Retriever",
          ),
        ],
      ),
    );
  }
}

class MascotaItem extends StatelessWidget {
  final String imagenUrl;
  final String nombre;
  final String edad;
  final String raza;

  const MascotaItem({
    Key? key,
    required this.imagenUrl,
    required this.nombre,
    required this.edad,
    required this.raza,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      width: 150.0,
      height: 250.0, // Ajusta la altura del contenedor
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(color: Colors.green),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(10.0)),
            child: Image.network(
              imagenUrl,
              height: 100.0,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  nombre,
                  style: TextStyle(color: Colors.green, fontSize: 16.0, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Edad: $edad",
                  style: TextStyle(color: Colors.green),
                ),
                Text(
                  "Raza: $raza",
                  style: TextStyle(color: Colors.green),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}