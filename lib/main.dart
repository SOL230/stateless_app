import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Soledad Reyes Martinez 190956",
          style: TextStyle(
              color: Color.fromRGBO(127, 11, 71, 1),
              fontFamily: "Montserrat",
              fontSize: 30.0),
        ),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: const AssetImage("assets/images/sol.jpg"),
                fit: BoxFit.fill),
          ),
        ),
        backgroundColor: Color.fromARGB(255, 41, 219, 231),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Card(
                  child: Container(
                padding: const EdgeInsets.all(34.0),
                child: Column(
                  children: <Widget>[
                    Text("Datos del estudiante",
                        style: TextStyle(
                            fontFamily: "Montserrat", fontSize: 30.0)),
                    Text("Nombre: Soledad Reyes Martinez"),
                    Text("Fecha de nacimiento: 13 de Septiembre de 1991"),
                    Text("Genero: Femenino"),
                  ],
                ),
              )),
              Card(
                  child: Container(
                padding: const EdgeInsets.all(34.0),
                child: Column(
                  children: <Widget>[
                    Text("Datos academicos",
                        style: TextStyle(
                            fontFamily: "Montserrat", fontSize: 38.0)),
                    Text(
                        "Carrera: Ingenieria en Desarrollo y Gestión de Software"),
                    Text("Cuatrimestre: Decimo"),
                    Text("Promedio: 8.5"),
                  ],
                ),
              )),
              Card(
                  child: Container(
                padding: const EdgeInsets.all(34.0),
                child: Column(
                  children: <Widget>[
                    Text("Horario",
                        style: TextStyle(
                            fontFamily: "Montserrat", fontSize: 38.0)),
                    Text("Materia: Desarrollo Movil Integral"),
                    Text("Docente: M.T.I Marco Antonio Ramírez Hernández"),
                    Text("Día: Viernes"),
                  ],
                ),
              )),
            ],
          ),
        ),
      ),
      floatingActionButton:
          SpeedDial(animatedIcon: AnimatedIcons.menu_close, children: [
        SpeedDialChild(
            child: Icon(Icons.person),
            label: 'Datos del estudiante',
            backgroundColor: Color.fromARGB(255, 130, 216, 238)),
        SpeedDialChild(
            child: Icon(Icons.school),
            label: 'Datos academicos',
            backgroundColor: Color.fromARGB(255, 130, 216, 238)),
        SpeedDialChild(
          child: Icon(Icons.book),
          label: 'Horarios',
          backgroundColor: Color.fromARGB(255, 130, 216, 238),
        ),
      ]),
    );
  }
}
