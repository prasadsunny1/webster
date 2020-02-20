import 'package:flutter/material.dart';
import 'Repository/dictionary_repository.dart';
import 'app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DictionaryRepository().fetchDictionaryMeaningOf("ball");
  runApp(MyApp());
}
