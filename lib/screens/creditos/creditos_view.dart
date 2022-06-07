import 'dart:async';
import 'dart:io' as IO;
import 'dart:io';

import 'package:app_vax/screens/login/login_view.dart';
import 'package:app_vax/screens/menu/menu_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Creditos extends StatefulWidget {
  Creditos();

  set servidor(String servidor) {}

  @override
  _CreditosState createState() => _CreditosState();
}

class _CreditosState extends State<Creditos> {
  String _username = '', _password = '';

  String _response = '';

  final TextEditingController _controller = TextEditingController();

  final TextEditingController _controller2 = TextEditingController();

  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        appBar: AppBar(
            elevation: 15,
            title: Text(
              'Creditos',
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Colors.grey.shade200, fontWeight: FontWeight.bold),
            ),
            iconTheme: IconThemeData(color: Colors.grey.shade200),
            leading: IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        settings: const RouteSettings(name: '/login'),
                        builder: (_) => Login()));
              },
              icon: const Icon(Icons.arrow_back),
              color: Colors.grey.shade200,
            ),
            centerTitle: true,
            backgroundColor: Colors.grey.shade800),
        backgroundColor: Colors.grey.shade300,
        body: Form(
            key: _globalKey,
            child: Stack(alignment: Alignment.centerLeft, children: <Widget>[
              Positioned(
                  left: 0,
                  top: 0,
                  //bottom: 0,
                  child: Column(children: <Widget>[
                    Container(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [Colors.white, Colors.green.shade300],
                                begin: Alignment.bottomLeft,
                                end: Alignment.topRight)),
                        height: size.height - (size.height / 12),
                        width: size.width,
                        child: SingleChildScrollView(
                          child: Column(children: [
                            //  SizedBox(
                            //   height: size.height/10,
                            // ),
                            Column(children: [
                              const SizedBox(
                                width: 50,
                              ),
                              Column(children: [
                                Container(
                                    height: size.height / 5,
                                    width: size.width / 1.7,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                      image: AssetImage(
                                          "assets/unisagrado-transparente-cor.png"),
                                      fit: BoxFit.fitWidth,
                                    ))),
                              ]),
                              Card(
                                shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.vertical(
                                        top: Radius.circular(25))),
                                elevation: 15,
                                child: Container(
                                    decoration: BoxDecoration(
                                        shape: BoxShape.rectangle,
                                        borderRadius: BorderRadius.circular(25),
                                        gradient: LinearGradient(
                                            colors: [
                                              Colors.white,
                                              Colors.grey.shade300
                                            ],
                                            begin: Alignment.centerLeft,
                                            end: Alignment.centerRight)),
                                    width: size.width / 1.2,
                                    height: size.height / 1.3,
                                    child: Column(children: [
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      const SizedBox(
                                        height: 50,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 1.0),
                                        child: Text(
                                          "Projeto de Extensão",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 30,
                                              color: Colors.grey.shade800),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 1.0),
                                        child: Center(
                                          child: Text(
                                            "DESENVOLVIMENTO DE APP INFORMATIVO SOBRE VACINAS",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20,
                                                color: Colors.grey.shade800),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 100,
                                      ),
                                      Column(children: [
                                        Container(
                                            child: const Text(
                                          'Desenvolvido por:',
                                          style: TextStyle(
                                              color: Colors.black54,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15),
                                        )),
                                        Container(
                                            child:
                                                const Text('Anderson Kaiti')),
                                        Container(
                                            child: const Text(
                                                'José Guilherme Alves')),
                                        Container(
                                            child: const Text(
                                                'Luan Ribeiro Sancassani')),
                                        SizedBox(height: 100),
                                        Container(
                                            child: const Text(
                                          'Orientador: Prof. Dr. Elvio Gilberto da Silva',
                                          textAlign: TextAlign.center,
                                        )),
                                        Container(
                                            child: const Text(
                                          'Colaboradora: Profª. Dr. Maria Aparecida Nuevo Gatti',
                                          textAlign: TextAlign.center,
                                        )),
                                        Container()
                                      ]),
                                    ])),
                              ),
                              SizedBox(
                                height: size.height / 8,
                              ),
                            ]),
                          ]),
                        ))
                  ]))
            ])));
  }
}
