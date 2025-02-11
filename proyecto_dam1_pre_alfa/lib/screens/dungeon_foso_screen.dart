import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class FosoScreen extends StatefulWidget {
  FosoScreen({Key? key}) : super(key: key);

  @override
  State<FosoScreen> createState() => _FosoScreenState();

}


class _FosoScreenState extends State<FosoScreen> {
  
  int _number=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        leading: Icon(MdiIcons.eye),
        title: Text('Foso de Saron'),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            child: Text('Foso de saron se encuentra en la poderosa ciudadela de Icecrown al igual que The Forge of Souls, siendo parte de la misión en cadena tiene dos entradas, una fuera de las tres mazmorras y otra al final de Forja de almas. '),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Text('El Foso de Saron es literalmente una mina que alimenta la máquina de guerra del Rey Exánime, con prisioneros humanos y no muertos trabajando día y noche para satisfacer sus necesidades. '),
          ),
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
              Icon(MdiIcons.axeBattle, color: Color.fromARGB(255, 202, 173, 43),),
              Text(' Guerrero ', style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 170, 114, 31))),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(MdiIcons.knife, color: Color.fromARGB(255, 164, 180, 17),),
              Text('  Picaro ', style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 167, 179, 8))),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(MdiIcons.magicStaff, color: Color.fromARGB(255, 23, 33, 168),),
              Text('  Sacerdote ', style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 55, 23, 172))),
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
                
                Image(image: AssetImage('assets/Martillo.jpg')),
                Image(image: AssetImage('assets/Daga.jpg')),
                Image(image: AssetImage('assets/Botas.jpg')),
                Image(image: AssetImage('assets/Rifle.jpg'))
              ],
            ),
          ),
          Container(
            child: 
            Image(image: AssetImage('assets/Foso.jpg')),
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