import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Quitar banner
      title: 'Flutter Demo',
      theme: ThemeData(
        //primarySwatch: Colors.blue,
        primaryColor: Colors.white, // Caso Barra en Blanco
      ),
      // Widget Home (Pantalla ppal)
      home: MyHomePage(),
    );
  }
}

// stl: crear Stateless Widget
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(),
      //Propiedad Crear Barra en el top
      appBar: AppBar(
        title: Image.asset(
          "assets/images/logo.png",
          height: 50.0,
        ),
        actions: <Widget>[
          InkWell(
            child: Image.asset(
              "assets/images/visa.png",
              height: 40.0,
            ),
            onTap: () {
              print("click visa!");
            }, // Permite click en el widget
          ),
          InkWell(
            child: Image.asset(
              "assets/images/people.png",
              height: 50.0,
            ),
            onTap: () {
              print("click people");
            }, // Permite click en el widget
          ),
          Icon(Icons.search),

          InkWell(
            onTap: () {
              print("click dehaze");
            },
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 16.0,
              ),
              child: Icon(Icons.dehaze),
            ),
          )


        ],
        //registrar img assets en pubspec.yaml
      ),
      //body: Center(child: Text("Hola Mierda!")),
      body: Center(child: Text("Hola Mierda 2!")),
    );
  }
}
