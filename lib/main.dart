import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  //const MainApp({super.key});
  const MainApp ({Key? key}) : super(key:key); // correccion del constructor

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: HomePage(),
      );
  }
}


class HomePage extends StatelessWidget {
  const HomePage ({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: 
        Center (child: Column(
                        mainAxisAlignment: MainAxisAlignment.center, 
                        children: <Widget>[Text('hola soy un texto principal'),
                        ElevatedButton(
                            onPressed: ()
                              {
                                //la navegacion a la segunda pagina al hacer clic en el boton
                                Navigator.push(
                                    context, 
                                    MaterialPageRoute(builder: (context) => SecundPage()),
                                  );
                              }, 
                                  child: Text('Ir a la segunda Pagina'),
                                ),
                              ],
                      ),
                    ),
            );
  }
}

class SecundPage extends StatelessWidget {
  const SecundPage ({Key? key}) : super(key:key);
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar( title: Text('Segunda pagina'),
      ),
      body:Center (child: Text('este es la segunda pagina'),
      ),
    );
  }
}