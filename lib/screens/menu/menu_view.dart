import 'dart:io' as IO;

//import 'package:conferencia_de_entrada/screens/oc_table.dart/oc_table_page.dart';
//import 'package:conferencia_de_entrada/utils/services/autenticacao/autenticacao_soap.dart';
import 'package:app_vax/controllers/menu/menu_controller.dart';
import 'package:app_vax/screens/categorias/gestantes/gestantes_view.dart';
import 'package:app_vax/screens/categorias/idoso/idosos_view.dart';
import 'package:app_vax/screens/categorias/indigenas/indigenas_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';

class Menu extends StatefulWidget {
  Menu();

  set servidor(String servidor) {}

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  String _username = '', _password = '';

  String _response = '';

  final TextEditingController _controller = TextEditingController();

  final TextEditingController _controller2 = TextEditingController();

  TextEditingController _controllerDialog = TextEditingController();

  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
  final GlobalKey<FormState> _dialogFormKey = GlobalKey<FormState>();

  @override
  void initState() {
    //Get.lazyPut(() => Autenticacao());
    //Get.put(OcTable());
    Get.put(Idosos());
    //Get.put(ElastPreco());
    Get.put(MenuController());
    super.initState();
  }

  checkVersion(var version) async {
    if (IO.Platform.isAndroid) {
      print("its android!");
      /* final newVersion = NewVersion(
        androidId: "br.com.nlphd.PhdInventoryManager",
      );

      newVersion.showAlertIfNecessary(context: context);*/
    } else if (IO.Platform.isWindows) {
      /*    updater.updateWindows();
       Directory tempDir = await getTemporaryDirectory();
    File testFile = File(tempDir.path.toString() + "/confirmRelease.txt");
    testFile.writeAsString("FUNCIONA RELEASE");
    updater.updateWindows(version);
    print("Version check!");*/
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    List<String> menu = Get.find<MenuController>().menus;
    var menuContent = Get.find<MenuController>().menuContent;
    var menuTitle = Get.find<MenuController>().menuTitle;
    return Container(
        child: Scaffold(
      appBar: AppBar(
          elevation: 15,
          title: Text(
            'Menu',
            textAlign: TextAlign.left,
            style: TextStyle(
                color: Colors.grey.shade200, fontWeight: FontWeight.bold),
          ),
          iconTheme: IconThemeData(color: Colors.grey.shade200),
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.home),
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
            child: Column(children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.white, Colors.green.shade800],
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight)),
                height: size.height, // - (size.height / 11.7),
                width: size.width,
                child: Column(children: [
                  SizedBox(
                    height: 30,
                  ),
                  Row(children: [
                    Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius:
                                BorderRadius.vertical(top: Radius.circular(25)),
                            gradient: LinearGradient(
                                colors: [Colors.white, Colors.grey.shade100],
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight)),
                        width: size.width / 6,
                        height: size.height / 1.151,
                        child: Column(children: [
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 1.0),
                            child: Text(
                              "Categorias",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 40,
                                  color: Colors.grey.shade800),
                            ),
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          Container(
                              height: 471,
                              width: 200,
                              child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: <Widget>[
                                    Container(
                                      height: 150,
                                      width: 200,
                                      child: Card(
                                          elevation: 15,
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(15))),
                                          child: InkWell(
                                            onTap: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      settings: RouteSettings(
                                                          name: '/idosos'),
                                                      builder: (_) =>
                                                          Idosos()));
                                            },
                                            splashColor: Colors.greenAccent,
                                            child: Center(
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                children: <Widget>[
                                                  Icon(Icons.elderly,
                                                      color:
                                                          Colors.green.shade800,
                                                      size: 70.0),
                                                  SizedBox(
                                                    height: 10,
                                                  ),
                                                  Text(
                                                    'Idosos',
                                                    style: TextStyle(
                                                        color: Colors
                                                            .grey.shade800,
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          )),
                                    ),
                                    Container(
                                      height: 150,
                                      width: 200,
                                      child: Card(
                                          elevation: 15,
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(15))),
                                          child: InkWell(
                                            onTap: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      settings: RouteSettings(
                                                          name: '/indigenas'),
                                                      builder: (_) =>
                                                          Indigenas()));
                                            },
                                            splashColor: Colors.greenAccent,
                                            child: Center(
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                children: <Widget>[
                                                  Icon(Icons.vaccines_rounded,
                                                      color:
                                                          Colors.green.shade800,
                                                      size: 70.0),
                                                  Text(
                                                    'Indígenas',
                                                    style: TextStyle(
                                                        color: Colors
                                                            .grey.shade800,
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          )),
                                    ),
                                    Container(
                                      height: 150,
                                      width: 200,
                                      child: Card(
                                          elevation: 15,
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(15))),
                                          child: InkWell(
                                            onTap: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      settings: RouteSettings(
                                                          name: '/gestantes'),
                                                      builder: (_) =>
                                                          Gestantes()));
                                            },
                                            splashColor: Colors.greenAccent,
                                            child: Center(
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                children: <Widget>[
                                                  Icon(Icons.pregnant_woman,
                                                      size: 70.0,
                                                      color: Colors
                                                          .green.shade800),
                                                  Text('Gestantes',
                                                      style: TextStyle(
                                                          color: Colors
                                                              .grey.shade800,
                                                          fontSize: 15,
                                                          fontWeight:
                                                              FontWeight.bold)),
                                                ],
                                              ),
                                            ),
                                          )),
                                    ),
                                  ])),
                        ])),
                    Expanded(
                      child: Column(children: [
                        SingleChildScrollView(
                          physics: ScrollPhysics(),
                          scrollDirection: Axis.vertical,
                          child: Container(
                            height: 100,
                            width: 1160,
                            child: DataTable(
                                dividerThickness: 5,
                                headingTextStyle: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold),
                                headingRowColor:
                                    MaterialStateProperty.resolveWith<Color>(
                                        (Set<MaterialState> states) {
                                  if (states.contains(MaterialState.selected))
                                    return Theme.of(context)
                                        .colorScheme
                                        .primary
                                        .withOpacity(0.08);
                                  return Colors.black; // Use the default value.
                                }),
                                headingRowHeight: 40,
                                dataTextStyle: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                                dataRowHeight: 35,
                                dataRowColor:
                                    MaterialStateProperty.resolveWith<Color>(
                                        (Set<MaterialState> states) {
                                  if (states.contains(MaterialState.selected))
                                    return Theme.of(context)
                                        .colorScheme
                                        .primary
                                        .withOpacity(0.08);
                                  return Colors
                                      .green.shade100; // Use the default value.
                                }),
                                columns: Get.find<MenuController>().getColumns(
                                    Get.find<MenuController>().listColumns),
                                rows: Get.find<MenuController>().getRows(
                                    Get.find<MenuController>().listDummy)),
                          ),
                        ),
                        SizedBox(height: 50),
                        Container(
                          height: 358,
                          width: 900,
                          child: Card(
                              elevation: 15,
                              child: Expanded(
                                child: Column(children: [
                                  const SizedBox(height: 30),
                                  Text(
                                    menuTitle,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black54,
                                        fontSize: 50),
                                  ),
                                  const SizedBox(height: 100),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text(
                                      menuContent,
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ]),
                              )),
                        )
                      ]),
                      /*decoration: BoxDecoration(
                                          image: DecorationImage(
                                        image: AssetImage(
                                            "assets/glossy-machine-learning.png"),
                                        fit: BoxFit.fitWidth,
                                      ))*/
                    ),
                  ]),
                ]),
              )
            ]),
          )
        ]),
      ),
    ));
  }
}
