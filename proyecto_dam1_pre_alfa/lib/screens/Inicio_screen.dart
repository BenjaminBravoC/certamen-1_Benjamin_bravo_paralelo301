import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:proyecto_dam1_pre_alfa/screens/contacto_screen.dart';
import 'package:proyecto_dam1_pre_alfa/screens/dungeons_screen.dart';
//'C1 DAM020-2022-2'
class InicioScreen extends StatelessWidget {
  const InicioScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff20bc9c),
          title: Column(
            children: [
              Text('C1 DAM020-2022-2', style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),),
              Text('Benjamin Bravo' , style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),)
            ],
          ),
          leading: Icon(MdiIcons.swordCross, color: Colors.red,),
          bottom: TabBar(tabs: [
            Tab(
              text: 'Mazmorras',
            ),
            Tab(
              text: 'Contacto',
            )
          ]),
        ),
        body: TabBarView(children: [
          DungeonsScreen(),
          ContactoScreen(),
        ]),
        
      ),
    );
  }
}