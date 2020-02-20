// To parse this JSON data, do
//
// final websterDictionaryResponse 
// = websterDictionaryResponseFromJson(jsonString);

import 'dart:convert';

List<WebsterDictionaryResponse> websterDictionaryResponseFromJson(String str) =>
    List<WebsterDictionaryResponse>.from(
        json.decode(str).map((x) => WebsterDictionaryResponse.fromJson(x)));

String websterDictionaryResponseToJson(List<WebsterDictionaryResponse> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class WebsterDictionaryResponse {
  Meta meta;
  Hwi hwi;
  String fl;
  List<Def> def;
  List<List<String>> et;
  String date;
  List<String> shortdef;

  WebsterDictionaryResponse({
    this.meta,
    this.hwi,
    this.fl,
    this.def,
    this.et,
    this.date,
    this.shortdef,
  });

  factory WebsterDictionaryResponse.fromJson(Map<String, dynamic> json) =>
      WebsterDictionaryResponse(
        meta: Meta.fromJson(json["meta"]),
        hwi: Hwi.fromJson(json["hwi"]),
        fl: json["fl"],
        def: List<Def>.from(json["def"].map((x) => Def.fromJson(x))),
        et: json["et"] == null
            ? null
            : List<List<String>>.from(
                json["et"].map((x) => List<String>.from(x.map((x) => x)))),
        date: json["date"] == null ? null : json["date"],
        shortdef: List<String>.from(json["shortdef"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "meta": meta.toJson(),
        "hwi": hwi.toJson(),
        "fl": fl,
        "def": List<dynamic>.from(def.map((x) => x.toJson())),
        "et": et == null
            ? null
            : List<dynamic>.from(
                et.map((x) => List<dynamic>.from(x.map((x) => x)))),
        "date": date == null ? null : date,
        "shortdef": List<dynamic>.from(shortdef.map((x) => x)),
      };
}

class Def {
  List<List<List<dynamic>>> sseq;

  Def({
    this.sseq,
  });

  factory Def.fromJson(Map<String, dynamic> json) => Def(
        sseq: List<List<List<dynamic>>>.from(json["sseq"].map((x) =>
            List<List<dynamic>>.from(
                x.map((x) => List<dynamic>.from(x.map((x) => x)))))),
      );

  Map<String, dynamic> toJson() => {
        "sseq": List<dynamic>.from(sseq.map((x) => List<dynamic>.from(
            x.map((x) => List<dynamic>.from(x.map((x) => x)))))),
      };
}

class SseqClass {
  List<List<String>> dt;

  SseqClass({
    this.dt,
  });

  factory SseqClass.fromJson(Map<String, dynamic> json) => SseqClass(
        dt: List<List<String>>.from(
            json["dt"].map((x) => List<String>.from(x.map((x) => x)))),
      );

  Map<String, dynamic> toJson() => {
        "dt": List<dynamic>.from(
            dt.map((x) => List<dynamic>.from(x.map((x) => x)))),
      };
}

class Hwi {
  String hw;
  List<Pr> prs;

  Hwi({
    this.hw,
    this.prs,
  });

  factory Hwi.fromJson(Map<String, dynamic> json) => Hwi(
        hw: json["hw"],
        prs: json["prs"] == null
            ? null
            : List<Pr>.from(json["prs"].map((x) => Pr.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "hw": hw,
        "prs":
            prs == null ? null : List<dynamic>.from(prs.map((x) => x.toJson())),
      };
}

class Pr {
  String mw;
  Sound sound;

  Pr({
    this.mw,
    this.sound,
  });

  factory Pr.fromJson(Map<String, dynamic> json) => Pr(
        mw: json["mw"],
        sound: json["sound"] == null ? null : Sound.fromJson(json["sound"]),
      );

  Map<String, dynamic> toJson() => {
        "mw": mw,
        "sound": sound == null ? null : sound.toJson(),
      };
}

class Sound {
  String audio;
  String ref;
  String stat;

  Sound({
    this.audio,
    this.ref,
    this.stat,
  });

  factory Sound.fromJson(Map<String, dynamic> json) => Sound(
        audio: json["audio"],
        ref: json["ref"],
        stat: json["stat"],
      );

  Map<String, dynamic> toJson() => {
        "audio": audio,
        "ref": ref,
        "stat": stat,
      };
}

class Meta {
  String id;
  String uuid;
  String sort;
  String src;
  String section;
  List<String> stems;
  bool offensive;

  Meta({
    this.id,
    this.uuid,
    this.sort,
    this.src,
    this.section,
    this.stems,
    this.offensive,
  });

  factory Meta.fromJson(Map<String, dynamic> json) => Meta(
        id: json["id"],
        uuid: json["uuid"],
        sort: json["sort"],
        src: json["src"],
        section: json["section"],
        stems: List<String>.from(json["stems"].map((x) => x)),
        offensive: json["offensive"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "uuid": uuid,
        "sort": sort,
        "src": src,
        "section": section,
        "stems": List<dynamic>.from(stems.map((x) => x)),
        "offensive": offensive,
      };
}
