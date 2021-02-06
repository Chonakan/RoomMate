class OftheyearsModel {
  String years,
      designer,
      topic,
      imgperson,
      work,
      detail,
      imgbg,
      designer2,
      topic2,
      imgperson2,
      detail2,
      imgbg2,
      designer3,
      topic3,
      imgperson3,
      detail3,
      imgbg3;

  OftheyearsModel(
    this.years,
    this.designer,
    this.topic,
    this.imgperson,
    this.work,
    this.detail,
    this.imgbg,
    this.designer2,
    this.topic2,
    this.imgperson2,
    this.detail2,
    this.imgbg2,
    this.designer3,
    this.topic3,
    this.imgperson3,
    this.detail3,
    this.imgbg3,
  );

  OftheyearsModel.fromMap(Map<String, dynamic> map) {
    years = map['Years'];
    designer = map['Designer'];
    topic = map['Topic'];
    imgperson = map['Imgperson'];
    work = map['Work'];
    detail = map['Detail'];
    imgbg = map['ImgBG'];

    designer2 = map['Designerr'];
    topic2 = map['Topicc'];
    imgperson2 = map['Imgpersonn'];
    detail2 = map['Detaill'];
    imgbg2 = map['ImgBGG'];

    designer3 = map['Designerrr'];
    topic3 = map['Topiccc'];
    imgperson3 = map['Imgpersonnn'];
    detail3 = map['Detailll'];
    imgbg3 = map['ImgBGGG'];
  }
}
