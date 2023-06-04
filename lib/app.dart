import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:webster/page/search_page.dart';

import 'bloc/dictionary_bloc.dart';
import 'page/dashboard_page.dart';
import 'page/home_page.dart';
import 'package:webster/colors.dart' as app_colors;

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => DictionaryBloc(),
      child: MaterialApp(
        theme: ThemeData(
          primaryColor: app_colors.brinkPink,
        ),
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => DashboardPage(),
          '/search': (context) => SearchPage(),
        },
      ),
    );
  }
}
