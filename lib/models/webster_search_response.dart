// To parse this JSON data, do
//
//     final websterSearchResponse = websterSearchResponseFromJson(jsonString);

import 'dart:convert';

List<String> websterSearchResponseFromJson(String str) =>
    List<String>.from(json.decode(str).map((x) => x));

String websterSearchResponseToJson(List<String> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x)));

