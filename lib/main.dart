import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'app.dart';
import 'bloc/dictionary_bloc.dart';
import 'bloc/simple_bloc_delegate.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  BlocSupervisor.delegate = SimpleBlocDelegate();
  var bloc = DictionaryBloc();
  bloc.add(SearchMeaningEvent("balsl"));
  runApp(MyApp());
}
