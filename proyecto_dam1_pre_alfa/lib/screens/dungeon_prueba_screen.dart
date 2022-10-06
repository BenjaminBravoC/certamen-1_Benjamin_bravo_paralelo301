import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class PruebaScreen extends StatefulWidget {
  PruebaScreen({Key? key}) : super(key: key);

  @override
  State<PruebaScreen> createState() => _PruebaScreenState();

}


class _PruebaScreenState extends State<PruebaScreen> {
  
  int _number=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        leading: Icon(MdiIcons.eye),
        title: Text('Prueba del campeon'),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            child: Text(
              'La Prueba del Campeón es una mazmorra ubicada en Corona de Hielo en los terrenos de la Cruzada Argenta, una instancia que forma parte del evento del Torneo Argenta, a menudo llamado El Coliseo. La mazmorra es parte de la iniciativa de la Cruzada Argenta para encontrar a los campeones más poderosos en preparación para la lucha contra el Rey Exánime. '),

          ),
          /*
          Container(
            padding: EdgeInsets.all(10),
            child: Text('The dungeon offers a perspective into how the Lich King torments souls and how he uses them to fuel the scourge war-machine, our adventurers will have to battle groups of undeads defending the forge, ultimately reaching its master, Bronjahm and destroying his craft. '),
          ),
          */
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Tab(
                  child: Text("Clases recomendadas: ", style: TextStyle(fontSize: 32, color: Colors.blue),),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(MdiIcons.magicStaff, color: Color.fromARGB(255, 19, 190, 62),),
              Text(' Druida ', style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 14, 145, 36))),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(MdiIcons.sword, color: Color.fromARGB(255, 180, 17, 17),),
              Text('  guerrero ', style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 179, 14, 8))),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(MdiIcons.magicStaff, color: Color.fromARGB(255, 68, 16, 209),),
              Text('  chaman ', style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 69, 20, 204))),
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
                
                Image(image: AssetImage('assets/Hacha.jpg')),
                Image(image: AssetImage('assets/Cinturon.jpg')),
                Image(image: AssetImage('assets/Abalorio.jpg')),
                Image(image: AssetImage('assets/Perneras.jpg'))
              ],
            ),
          ),
          Container(
            child: 
            Image(image: AssetImage('assets/Torneo.jpg')),
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