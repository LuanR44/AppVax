import 'dart:async';
import 'dart:io' as IO;
import 'dart:io';

import 'package:app_vax/screens/creditos/creditos_view.dart';
import 'package:app_vax/screens/menu/menu_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Login extends StatefulWidget {
  Login();

  set servidor(String servidor) {}

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
              'Login',
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Colors.grey.shade200, fontWeight: FontWeight.bold),
            ),
            iconTheme: IconThemeData(color: Colors.grey.shade200),
            leading: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.vaccines),
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
                                    child: const Text(
                                  "App Vax",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontSize: 60,
                                      color: Color.fromARGB(188, 59, 57, 57)),
                                )),
                                Container(
                                    height: size.height / 4,
                                    width: size.width / 4,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                      image: AssetImage(
                                          "assets/Greenlight_Vaccinations.png"),
                                      fit: BoxFit.fitWidth,
                                    ))),

                                /*  Container(
                                    height: size.height / 2,
                                    width: size.width / 2,
                                    decoration: const BoxDecoration(
                                        image: const DecorationImage(
                                      image: const AssetImage(
                                          "assets/office.png"),
                                      fit: BoxFit.fitWidth,
                                    ))),*/
                              ]),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10.0),
                                child: Card(
                                  shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.vertical(
                                          top: Radius.circular(25))),
                                  elevation: 15,
                                  child: Container(
                                      decoration: BoxDecoration(
                                          shape: BoxShape.rectangle,
                                          borderRadius:
                                              BorderRadius.circular(25),
                                          gradient: LinearGradient(
                                              colors: [
                                                Colors.white,
                                                Colors.grey.shade300
                                              ],
                                              begin: Alignment.centerLeft,
                                              end: Alignment.centerRight)),
                                      width: size.width / 1.6,
                                      height: size.height / 1.3,
                                      child: Column(children: [
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        /*Container(
                                            width: size.width / 5,
                                            height: size.height / 15,
                                            child: const Image(
                                                alignment: Alignment.center,
                                                image: AssetImage(
                                                    'assets/logo_oficial.png'))),*/
                                        const SizedBox(
                                          height: 50,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 1.0),
                                          child: Text(
                                            "Bem Vindo!",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 40,
                                                color: Colors.grey.shade800),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 170,
                                        ),
                                        Column(children: [
                                          SizedBox(
                                            width: 100,
                                          ),
                                          ElevatedButton(
                                              child: Container(
                                                height: 50,
                                                width: 150,
                                                child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      vertical: 10),
                                                  child: const Text(
                                                    "Entrar",
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                              ),
                                              style: ElevatedButton.styleFrom(
                                                primary: Colors.grey.shade900,
                                                onPrimary: Colors.white,
                                                alignment: Alignment.bottomLeft,
                                                textStyle: const TextStyle(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white),
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 10,
                                                        vertical: 10),
                                                elevation: 25.0,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          30.0),
                                                ),
                                              ),
                                              onPressed: () async {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        settings:
                                                            const RouteSettings(
                                                                name: '/menu'),
                                                        builder: (_) =>
                                                            Menu()));
                                              }

                                              // this._controller.clear();
                                              // this._controller2.clear();

                                              ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          ElevatedButton(
                                              child: Container(
                                                height: 50,
                                                width: 150,
                                                child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      vertical: 10),
                                                  child: const Text(
                                                    "Saiba mais",
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                              ),
                                              style: ElevatedButton.styleFrom(
                                                primary: Colors.grey.shade900,
                                                onPrimary: Colors.white,
                                                alignment: Alignment.bottomLeft,
                                                textStyle: const TextStyle(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white),
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 10,
                                                        vertical: 10),
                                                elevation: 25.0,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          30.0),
                                                ),
                                              ),
                                              onPressed: () async {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        settings:
                                                            const RouteSettings(
                                                                name:
                                                                    '/creditos'),
                                                        builder: (_) =>
                                                            Creditos()));
                                              }

                                              // this._controller.clear();
                                              // this._controller2.clear();

                                              )
                                        ]),
                                      ])),
                                ),
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
