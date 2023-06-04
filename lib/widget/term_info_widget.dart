import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';

import '../bloc/dictionary_bloc.dart';
import '../entity/webster_dictionary_response.dart';

class TermInfoWidget extends StatelessWidget {
  final DictonaryTermResult state;
  final WebsterDictionaryResponse firstItem;
  final BuiltList<WebsterDictionaryResponse> others;

  TermInfoWidget({@required this.state})
      : firstItem = state.result.first,
        others = state.result.getRange(1, state.result.length).toBuiltList();
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue.withOpacity(0.7),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Text(
              firstItem.meta.stems.first ?? "",
              style: Theme.of(context).textTheme.headline4,
            ),
            Text(
              firstItem.type ?? "type",
              style: Theme.of(context).textTheme.headline6,
            ),
            Text(
              firstItem.shortdef.first,
              style: Theme.of(context).textTheme.subtitle1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                FlatButton(
                  color: Colors.white.withOpacity(0.5),
                  onPressed: () {},
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(Icons.speaker),
                      Text("Listen"),
                    ],
                  ),
                ),
                FlatButton(
                  color: Colors.white.withOpacity(0.5),
                  onPressed: () {},
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(Icons.favorite_border),
                      Text("favourite"),
                    ],
                  ),
                ),
                FlatButton(
                  color: Colors.white.withOpacity(0.5),
                  onPressed: () {},
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(Icons.content_copy),
                      Text("copy"),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
