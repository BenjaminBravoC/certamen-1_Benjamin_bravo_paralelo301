import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ForjaScreen extends StatefulWidget {
  ForjaScreen({Key? key}) : super(key: key);

  @override
  State<ForjaScreen> createState() => _ForjaScreenState();

}


class _ForjaScreenState extends State<ForjaScreen> {
  
  int _number=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        leading: Icon(MdiIcons.eye),
        title: Text('Forja de almas'),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            child: Text('La forja de almas se encuentra en la poderosa ciudadela de corona de hielo, una de las tres mazmorras disponibles dentro de la ciudadela además de la incursión, y nos ofrece una misión en cadena que ayudará a los ejércitos de Azeroth. '),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Text('La mazmorra ofrece una perspectiva de cómo el Rey Exánime atormenta las almas y cómo las usa para alimentar la máquina de guerra flageladora, nuestros aventureros tendrán que luchar contra grupos de muertos vivientes que defienden la forja. '),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Tab(
                  child: Text("Clases recomendadas: ", style: TextStyle(fontSize: 24, color: Colors.blue),),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(MdiIcons.sword, color: Color.fromARGB(255, 202, 173, 43),),
              Text(' Paladin ', style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 170, 114, 31))),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(MdiIcons.magicStaff, color: Colors.blue,),
              Text('  Mago ', style: TextStyle(fontSize: 20, color: Colors.blue)),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(MdiIcons.bowArrow, color: Color.fromARGB(255, 23, 168, 59),),
              Text('  Druida ', style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 23, 172, 80))),
            ],
          ),
          Column(children: [
            Text('')
          ]),
          Column(children: [
            Text('Posible botin de la mazmorra:', style: TextStyle(fontSize: 20, color: Colors.red)),
          ]),
          Container(
            //alignment: Alignment.center,
            width: double.infinity,
            child: 
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
                Image(image: AssetImage('assets/maza_sol.jpg')),
                Image(image: AssetImage('assets/Hombrera.jpg')),
                Image(image: AssetImage('assets/Brazal.jpg')),
                Image(image: AssetImage('assets/Tunica.jpg'))
              ],
            ),
          ),
          Container(
            child: 
            Image(image: AssetImage('assets/Forja.jpg')),
          ),
          OutlinedButton(
            child: Icon(MdiIcons.star),
            
            onPressed: (){
              _number++;
              print("El valor es: $_number");
            },
          ),
          Container(
            child: 
            Text("El valor es: $_number"),
          ),
          
          
          OutlinedButton(
            child: Text('Volver'),
            onPressed: (){
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
/*
Row(
            children: [
              
              Image(image: AssetImage('assets/maza_sol.jpg')),
              Image(image: AssetImage('assets/Hombrera.jpg')),
            ],
          ),
          */
          /*
          Text('Mago ', style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 21, 161, 216))),
              Text('Cazador', style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 19, 194, 77)))
          */  