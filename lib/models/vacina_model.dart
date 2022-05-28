class Vacina {
  final String vacinaNum;
  final String doze1;
  final String doze2;
  final String doze3;
  final String percent1;
  final String percent2;
  final String percent3;

  const Vacina({
    required this.vacinaNum,
    required this.doze1,
    required this.doze2,
    required this.doze3,
    required this.percent1,
    required this.percent2,
    required this.percent3,
  });

  Vacina copy({
    String? vacinaNum,
    String? doze1,
    String? doze2,
    String? doze3,
    String? percent1,
    String? percent2,
    String? percent3,
  }) =>
      Vacina(
        vacinaNum: vacinaNum ?? this.vacinaNum,
        doze1: doze1 ?? this.doze1,
        doze2: doze2 ?? this.doze2,
        doze3: doze3 ?? this.doze3,
        percent1: percent1 ?? this.percent1,
        percent2: percent2 ?? this.percent2,
        percent3: percent1 ?? this.percent3,
      );
}
