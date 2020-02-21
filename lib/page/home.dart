import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:webster/widget/term_info_widget.dart';

import '../bloc/dictionary_bloc.dart';
import '../widget/search_box.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Webster'),
      ),
      body: BlocBuilder<DictionaryBloc, DictionaryState>(
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                SearchBox(),
                if (state is DictonarySuggestedTerms)
                  ...state.suggestions.map((s) => Text(s)),
                if (state is DictonaryTermResult) TermInfoWidget(state: state),
              ],
            ),
          );
        },
      ),
    );
  }
}
