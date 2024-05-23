import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const Proyecto());
}

class Proyecto extends StatefulWidget {
  const Proyecto({super.key});

  @override
  State<Proyecto> createState() => _ProyectoState();
}

class _ProyectoState extends State<Proyecto> {
  String contentText = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Examen",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          title: Text("Aplicación de Noticias"),
          leading: Builder(
            builder: (context) => IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            ),
          ),
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Center(
                  child: Text(
                    "Menú",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ),
              ),
              ListTile(
                title: Text("Inicio"),
                leading: Icon(Icons.home),
                onTap: () {
                  setState(() {
                    contentText = 'Seccion: Inicio';
                  });
                  
                },
              ),
              ListTile(
                title: Text("Deportes"),
                leading: Icon(Icons.sports_soccer_outlined),
                onTap: () {
                  setState(() {
                    contentText = 'Seccion: Deportes';
                  });
                  
                },
              ),
              ListTile(
                title: Text("Tecnología"),
                leading: Icon(Icons.computer_outlined),
                onTap: () {
                },
              ),
              ListTile(
                title: Text("Entretenimiento"),
                leading: Icon(Icons.assist_walker_rounded),
                onTap: () {
                },
              ),
            ],
          ),
        ),
        body: Center(
          child: Text(
            contentText,
          ),
        ),
      ),
    );
  }
}

