class HometipsModel {
  String tipstopic1, tipstopic2, tipstopic3;

  HometipsModel(this.tipstopic1, this.tipstopic2, this.tipstopic3);

  HometipsModel.fromMap(Map<String, dynamic> map) {
    tipstopic1 = map['TipsTopic1'];
    tipstopic2 = map['TipsTopic2'];
    tipstopic3 = map['TipsTopic3'];
  }
}
