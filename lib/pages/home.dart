import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:webster/bloc/dictionary_bloc.dart';
import 'package:webster/widgets/search_box.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Webster'),
      ),
      body: BlocBuilder<DictionaryBloc, DictionaryState>(
        builder: (context, state) {
          return Column(
            children: <Widget>[
              SearchBox(),
              if (state is DictonarySuggestedTerms)
                ...state.suggestions.map((s) => Text(s)),
              if (state is DictonaryTermResult)
                Text(state.result.first.shortdef.first)
            ],
          );
        },
      ),
    );
  }
}
