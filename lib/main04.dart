import 'package:flutter/material.dart';
void main() {
  runApp( MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Container con diseño')),
        body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(height: 30), // Espacio entre los botones
              Container(
                padding: EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 10,
                      spreadRadius: 5,
                    )
                  ],
                ),
                child: Text(
                  'Hola, Soy un Container',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
              SizedBox(height: 30), // Espacio entre los botones

              Text('Este es un texto arriba'),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(color: Colors.red, height: 50, width: 50),
                  Container(color: Colors.green, height: 50, width: 50),
                  Container(color: Colors.blue, height: 50, width: 50),
                ],
              ),
              SizedBox(height: 20),
              Text('Este es un texto abajo')




            ],
          )
        ),

      ),
    );
  }


}