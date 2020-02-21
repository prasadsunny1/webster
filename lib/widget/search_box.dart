import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:just_debounce_it/just_debounce_it.dart';

import '../bloc/dictionary_bloc.dart';

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
      child: Material(
        elevation: 4,
        child: TextField(
          controller: textEditingController,
          onChanged: searchTextChanged,
          autocorrect: true,
          maxLines: 1,
          style: TextStyle(
            fontSize: 24,
            color: Colors.grey.shade700,
          ),
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.search),
            border: InputBorder.none,
          ),
        ),
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
