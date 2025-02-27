import 'package:flutter/material.dart';

void main() => runApp(MisIconos());

class MisIconos extends StatelessWidget {
  const MisIconos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Jesus Adrian"),
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
          centerTitle: true,
          backgroundColor: Color(0xff2766ef),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  "Mat:22308051281176",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.normal),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  _buildIconWithSubtitle(
                      Icons.account_circle, 'Inicio', Color(0xff23c7cd), 30),
                  _buildIconWithSubtitle(
                      Icons.wallet, 'Cartera', Color(0xff95560b), 30),
                  _buildIconWithSubtitle(
                      Icons.receipt, 'Recibo', Color(0xff7c0c69), 30),
                ],
              ),
              SizedBox(height: 20), // Espacio entre las filas
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  _buildIconWithSubtitle(
                      Icons.access_alarm, 'Alarma', Color(0xffb50e0e), 30),
                  _buildIconWithSubtitle(Icons.navigation_sharp, 'Navegacion',
                      Color(0xff3b0998), 30),
                  _buildIconWithSubtitle(
                      Icons.table_restaurant, 'Meza', Color(0xdf0d9724), 30),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildIconWithSubtitle(
      IconData iconData, String subtitle, Color color, double size) {
    return Column(
      children: <Widget>[
        Icon(iconData, color: color, size: size),
        SizedBox(height: 10),
        Text(subtitle),
      ],
    );
  }
}
