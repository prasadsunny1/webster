import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:just_debounce_it/just_debounce_it.dart';
import 'package:webster/bloc/dictionary_bloc.dart';

class SearchBox extends StatefulWidget {
  @override
  _SearchBoxState createState() => _SearchBoxState();
}

class _SearchBoxState extends State<SearchBox> {
  TextEditingController textEditingController = TextEditingController();
  DictionaryBloc bloc;
  @override
  Widget build(BuildContext context) {
    bloc = BlocProvider.of<DictionaryBloc>(context);
    return Container(
      child: TextField(
        controller: textEditingController,
        onChanged: searchTextChanged,
        autocorrect: true,
        maxLines: 1,
      ),
    );
  }

  void searchTextChanged(String value) {
    Debounce.milliseconds(1000, dispatchSearchEvent, [value]);
  }

  void dispatchSearchEvent(String searchTerm) {
    print(searchTerm);
    bloc.add(SearchMeaningEvent(searchTerm));
  }
}
