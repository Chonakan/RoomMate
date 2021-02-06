class HomepageModel {
  String topic, topic2, topic3, topic4;

  HomepageModel(this.topic, this.topic2, this.topic3, this.topic4);

  HomepageModel.fromMap(Map<String, dynamic> map) {
    topic = map['Topic'];
    topic2 = map['Topic2'];
    topic3 = map['Topic3'];
    topic4 = map['Topic4'];
  }
}
