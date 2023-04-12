import 'package:cath_play/inicio/canales.dart';
import 'package:cath_play/inicio/estadisticas.dart';
import 'package:cath_play/my_widgets/my_body_container.dart';
import 'package:cath_play/my_widgets/my_title_text.dart';
import 'package:flutter/material.dart';
import 'inicio/buscar.dart';
import 'inicio/perfil.dart';
import 'inicio/videos.dart';

class Inicio extends StatefulWidget{
  const Inicio({Key? key}) : super(key: key);

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  int indexTap = 0;

  void onTapTapped(int index) {
    setState(() {
      indexTap = index;
    });
  }

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    List<Widget> menuItems = [
      Videos(),
      Canales(),
      Estadisticas(),
      //Perfil(),
    ];

    // TODO: implement build
    return Scaffold(
      key: _scaffoldKey,
      appBar: myAppBar(),
      body: MyBodyContainer(widget: menuItems[indexTap],),
      bottomNavigationBar: myBottomNavigatorBar(),
    );
  }

  myBottomNavigatorBar(){
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Theme.of(context).colorScheme.secondary,
            Theme.of(context).colorScheme.secondaryContainer,
          ],
        ),
      ),
      child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: onTapTapped,
        currentIndex: indexTap,
        backgroundColor: Colors.transparent,
        elevation: 0,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white60,
        selectedIconTheme: const IconThemeData(color: Colors.white),
        items: const [
          BottomNavigationBarItem(
              label: "Videos",
              icon: Icon(Icons.play_arrow_rounded)
          ),
          BottomNavigationBarItem(
              label: "Canales",
              icon: Icon(Icons.video_library_rounded)
          ),
          BottomNavigationBarItem(
              label: "Estadísticas",
              icon: Icon(Icons.query_stats_rounded)
          ),
          //BottomNavigationBarItem(label: "Perfil", icon: Icon(Icons.assignment_ind_rounded)),
        ],
      ),
    );
  }

  myAppBar(){
    return AppBar(
      leading: Container(
        height: 20, width: 45,
        margin: const EdgeInsets.only(left: 10, right: 0, bottom: 10, top: 10),
        color: Colors.black12,
        child: const Center(child: Text("logo", style: TextStyle(color: Colors.black87),)),
      ),
      title: const MyTitleText(text: "Cath Play", size: 18,),
      actions: [
        IconButton(
          onPressed: (){
            Navigator.push(
              context,
              //MaterialPageRoute(builder: (context) => Buscar()),
              PageRouteBuilder(
                pageBuilder: (context, animation1, animation2) => Buscar(),
                transitionDuration: Duration.zero,
                reverseTransitionDuration: Duration.zero,
              ),
            );
          },
          icon: Icon(Icons.search, color: Theme.of(context).colorScheme.secondary,),
        ),
        IconButton(
          onPressed: (){
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Perfil())
            );
          },
          icon: Icon(Icons.person_rounded, color: Theme.of(context).colorScheme.secondary,),
        ),
      ],
    );
  }
}