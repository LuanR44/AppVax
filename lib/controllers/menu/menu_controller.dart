import 'package:app_vax/models/vacina_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MenuController extends GetxController {
  MenuController();

  List<String> menus = ['Indígenas', 'Idosos', 'Gestantes'];

  final listColumns = [
    'Categoria',
    '1ª Doze',
    '%',
    '2ª Doze',
    '%',
    '3ª Doze',
    '%'
  ];
  final listDummy = <Vacina>[
    const Vacina(
        vacinaNum: 'Idosos',
        percent1: '% 92',
        percent2: '% 83',
        percent3: '% ',
        doze1: 'Covid',
        doze2: 'Covid',
        doze3: 'Covid'),
    const Vacina(
        vacinaNum: 'Indígenas',
        percent1: '% 82',
        percent2: '% 72',
        percent3: '%',
        doze1: 'Covid',
        doze2: 'Covid',
        doze3: 'Covid'),
    const Vacina(
        vacinaNum: 'Gestantes',
        percent1: '% 56',
        percent2: '% 21.6',
        percent3: '%',
        doze1: 'Covid',
        doze2: 'Covid',
        doze3: 'Covid'),
  ];

  List<DataColumn> getColumns(List<String> columns) =>
      columns.map((String column) => DataColumn(label: Text(column))).toList();
  List<DataCell> getCells(List<dynamic> cells) => cells
      .map((data) => DataCell(Text(
            '$data',
            textAlign: TextAlign.center,
          )))
      .toList();

  List<DataRow> getRows(List<Vacina> rows) => rows.map((Vacina row) {
        final cells = [
          row.vacinaNum,
          row.doze1,
          row.percent1,
          row.doze2,
          row.percent2,
          row.doze3,
          row.percent3
        ];
        return DataRow(selected: true, cells: getCells(cells));
      }).toList();

  String menuTitle = 'IMPORTANTE !';

  String menuContent =
      'Após receberem as vacinas, as pessoas podem sentir algumas reações que são esperadas como febre, cansaço, dor e vermelhidão local. Isto ocorre pois a vacina está estimulando a produção dos anticorpos e a defesa do nosso organismo. Estas reações são geralmente transitórias e não fazem mal, apesar de serem incômodas.';
}
