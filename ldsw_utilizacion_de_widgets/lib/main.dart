import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Catálogo de películas',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor:  Color.fromARGB(255, 183, 58, 179)),
        useMaterial3: true,
      ),
      home:  MyHomePage(),
    );
  }
}
class ContenedorPelicula extends StatelessWidget{
  final String nombrePelicula;
  ContenedorPelicula({required this.nombrePelicula});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 150,
          height: 180,
          decoration: BoxDecoration(
            color: Colors.pinkAccent,
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        Positioned(
          top: 10,
          child: Container(
            width: 120,
            height: 140,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 255, 199, 217),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Center(
              child: Text('Imagen'),
            ),
          ),
        ),
        Positioned(
          bottom: 7,
          child: Text(nombrePelicula, style: TextStyle(color: Colors.white)),
        ),
      ],
    );
  }
}
class MyHomePage extends StatelessWidget {
  MyHomePage();
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("FlickPop"),
        actions: <Widget>[
          IconButton(
            onPressed: null, 
            icon: Icon(Icons.menu)
          ),
        ]
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget> [
            Container(
              color: Colors.pinkAccent,
              height: 180,
              child: Center(
                child: Text('Película 1',style: TextStyle(color:Colors.white)),
              ),
            ),
          SizedBox(height:20.0),  
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ContenedorPelicula(nombrePelicula: 'Película 1'),
              ContenedorPelicula(nombrePelicula: 'Película 2'),
            ],
          ),
          SizedBox(height:20.0),  
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ContenedorPelicula(nombrePelicula: 'Película 3'),
              ContenedorPelicula(nombrePelicula: 'Película 4'),
            ],
          ),
          ],
        ),
      ),
    );
    
  }
}




