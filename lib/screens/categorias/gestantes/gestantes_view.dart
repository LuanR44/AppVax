import 'package:app_vax/controllers/categorias/gestantes/gestantes_controller.dart';
import 'package:flutter/material.dart';
import 'package:app_vax/screens/menu/menu_view.dart';
import 'package:get/get.dart';

class Gestantes extends StatefulWidget {
  Gestantes();

  set servidor(String servidor) {}

  @override
  _GestantesState createState() => _GestantesState();
}

class _GestantesState extends State<Gestantes> {
  final TextEditingController _controller = TextEditingController();

  final TextEditingController _controller2 = TextEditingController();

  TextEditingController _controllerDialog = TextEditingController();

  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
  final GlobalKey<FormState> _dialogFormKey = GlobalKey<FormState>();
  var selectedCard = 0;

  @override
  void initState() {
    Get.put(GestantesControler());

    title = Get.find<GestantesControler>().titleDifTet;
    textCard = Get.find<GestantesControler>().textDifTet;
    flavourText = Get.find<GestantesControler>().flavourDifTet;
    whenText = Get.find<GestantesControler>().whenDifTet;
    super.initState();
  }

  String title = '';
  String textCard = '';
  String flavourText = '';
  String whenText = '';
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var selected = 0.obs;

    return Scaffold(
      appBar: AppBar(
          elevation: 15,
          title: Text(
            'Gestantes',
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
                      settings: const RouteSettings(name: '/menu'),
                      builder: (_) => Menu()));
            },
            icon: const Icon(Icons.home),
            color: Colors.grey.shade200,
          ),
          centerTitle: true,
          backgroundColor: Colors.grey.shade800),
      backgroundColor: Colors.grey.shade300,
      body: Form(
        key: _globalKey,
        child: Stack(alignment: Alignment.centerLeft, children: <Widget>[
          Column(children: <Widget>[
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.white, Colors.green.shade800],
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight)),
                height: size.height / 1.18, // - (size.height / 11.7),
                width: size.width,
                child: Row(children: [
                  Container(
                    height: size.height,
                    width: size.width / 3,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [Colors.white, Colors.green.shade900],
                            begin: Alignment.bottomLeft,
                            end: Alignment.topRight)),
                    child: Column(children: [
                      const SizedBox(
                        height: 70,
                      ),
                      SizedBox(
                        height: 150,
                        width: 200,
                        child: Card(
                            elevation: 15,
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15))),
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  title = Get.find<GestantesControler>()
                                      .titleDifTet;
                                  textCard =
                                      Get.find<GestantesControler>().textDifTet;
                                  flavourText = Get.find<GestantesControler>()
                                      .flavourDifTet;
                                  whenText =
                                      Get.find<GestantesControler>().whenDifTet;
                                });
                              },
                              splashColor: Colors.greenAccent,
                              child: Center(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    Icon(Icons.vaccines_outlined,
                                        color: Colors.green.shade800,
                                        size: 70.0),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      'Difteria e Tétano',
                                      style: TextStyle(
                                          color: Colors.grey.shade800,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            )),
                      ),
                      SizedBox(
                        height: 150,
                        width: 200,
                        child: Card(
                            elevation: 15,
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15))),
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  title = Get.find<GestantesControler>()
                                      .titleRubeolaSarampo;
                                  textCard = Get.find<GestantesControler>()
                                      .textRubeolaSarampo;
                                  flavourText = Get.find<GestantesControler>()
                                      .flavourRubeolaSarampo;
                                  whenText = Get.find<GestantesControler>()
                                      .whenRubeolaSarampo;
                                });
                              },
                              splashColor: Colors.greenAccent,
                              child: Center(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    Icon(Icons.vaccines_rounded,
                                        color: Colors.green.shade800,
                                        size: 70.0),
                                    Text(
                                      'Sarampo e Rubéola',
                                      style: TextStyle(
                                          color: Colors.grey.shade800,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            )),
                      ),
                      SizedBox(
                        height: 150,
                        width: 200,
                        child: Card(
                            elevation: 15,
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15))),
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  title = Get.find<GestantesControler>()
                                      .titleFebreAmarela;
                                  textCard = Get.find<GestantesControler>()
                                      .textFebreAmarela;
                                  flavourText = Get.find<GestantesControler>()
                                      .flavourFebreAmarela;
                                  whenText = Get.find<GestantesControler>()
                                      .whenFebreAmarela;
                                });
                              },
                              splashColor: Colors.greenAccent,
                              child: Center(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    Icon(Icons.vaccines_rounded,
                                        size: 70.0,
                                        color: Colors.green.shade800),
                                    Text('Febre Amarela',
                                        style: TextStyle(
                                            color: Colors.grey.shade800,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold)),
                                  ],
                                ),
                              ),
                            )),
                      ),
                    ]),
                  ),
                  Expanded(
                    child: Container(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [Colors.white, Colors.green.shade400],
                                begin: Alignment.bottomLeft,
                                end: Alignment.topRight)),
                        child: Column(children: [
                          const SizedBox(
                            height: 15,
                          ),
                          const Text('Informações',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black54,
                                  fontSize: 40)),
                          const SizedBox(
                            height: 15,
                          ),
                          Container(
                              decoration: const BoxDecoration(
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(25)),
                              ),
                              height: 600,
                              width: size.width / 1.6,
                              //color: Colors.white,
                              child: Card(
                                shape: const RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15))),
                                elevation: 15,
                                child: Column(children: [
                                  const SizedBox(height: 30),
                                  Text(
                                    title,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black54,
                                        fontSize: 20),
                                  ),
                                  const SizedBox(height: 25),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text(
                                      textCard,
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Text(flavourText,
                                        textAlign: TextAlign.center),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Text(whenText,
                                        textAlign: TextAlign.center),
                                  ),
                                ]),
                              )),
                        ])),
                  )
                ]),
              ),
            )
          ]),
        ]),
      ),
    );
  }
}

class _PieData {
  _PieData(this.xData, this.yData, [this.text]);
  final String xData;
  final num yData;
  final String? text;
}

class _SalesData {
  _SalesData(this.year, this.sales);

  final String year;
  final double sales;
}
