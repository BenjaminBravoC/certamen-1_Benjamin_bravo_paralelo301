import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class CamarasScreen extends StatefulWidget {
  CamarasScreen({Key? key}) : super(key: key);

  @override
  State<CamarasScreen> createState() => _CamarasScreenState();

}


class _CamarasScreenState extends State<CamarasScreen> {
  
  int _number=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        leading: Icon(MdiIcons.eye),
        title: Text('Camaras de reflexion'),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            child: Text('La mazmorra final de la misión en cadena, situada dentro de la Ciudadela de la Corona de Hielo, las Cámaras de Reflexión esconden una de las posesiones más preciadas del Rey Exánime, su amada espada, Froustmourne. Nuestros aventureros buscan respuestas en el intento de arruinar los planes del Rey Exánime, buscan la comunión con la espada para encontrar el conocimiento oculto, pero Arthas los detiene abruptamente. '),
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
              Icon(MdiIcons.sword, color: Color.fromARGB(255, 190, 19, 19),),
              Text(' Caballero de la muerte ', style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 145, 19, 14))),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(MdiIcons.magicStaff, color: Color.fromARGB(255, 17, 41, 180),),
              Text('  Brujo ', style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 8, 48, 179))),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(MdiIcons.hammer, color: Color.fromARGB(255, 206, 209, 16),),
              Text('  Paladin ', style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 170, 204, 20))),
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
                
                Image(image: AssetImage('assets/Capa.jpg')),
                Image(image: AssetImage('assets/Guantes.jpg')),
                Image(image: AssetImage('assets/Anillo.jpg')),
                Image(image: AssetImage('assets/Casco.jpg'))
              ],
            ),
          ),
          Container(
            child: 
            Image(image: AssetImage('assets/Camaras.jpg')),
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