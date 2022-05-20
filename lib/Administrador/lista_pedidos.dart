import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../Administrador/Login/appbar_add_admin.dart';
import '../Cliente/Interface_Ementa/estilos/colors.dart';
import '../Cliente/Interface_Ementa/estilos/style.dart';

class pedidos_admin_curso extends StatefulWidget {
  const pedidos_admin_curso({Key? key}) : super(key: key);

  @override
  _pedidos_admin_cursoState createState() => _pedidos_admin_cursoState();
}

class _pedidos_admin_cursoState extends State<pedidos_admin_curso> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
                toolbarHeight: 80.0,
                backgroundColor: Color(0xFFFDAE47),
                elevation: 0.0,
                centerTitle: true,
          title: Text('My Coffee',
            style: TextStyle(
              fontSize: 27,
              fontFamily: 'Varela',
              fontWeight: FontWeight.bold,
              color: Colors.white
            ),
          ),
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/Icons/splash_icon.png'),
                  minRadius: 10,
                  maxRadius: 10,
                )
              ),
          backgroundColor: AppColors.white,
          body: Stack(
            children: <Widget>[
            CustomPaint(
                painter: appbar_add(),
            child: Container(height: 0),
            ),
          Stack(
            children: <Widget>[
          ListView(
          children: [
          SizedBox(width: 10,),
          Padding(
            padding: EdgeInsets.only(top: 5),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                     SizedBox(height: 10,),
                     Padding(
                          padding: EdgeInsets.only(left: 142),
                          child: PrimaryText(
                          text: 'Lista de Pedidos',
                          size: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                   ],
                 ),
               ),
            ],
          ),
        ],
      ),
    ],
   ),
  );
 }
}
