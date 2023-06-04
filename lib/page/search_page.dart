import 'package:flutter/material.dart';
import 'package:webster/colors.dart' as app_colors;

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            TopSearchBarWidget(textEditingController: textEditingController),
            Container(
              color: app_colors.brinkPink,
              height: 40,
              child: Row(
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.speaker),
                    onPressed: () {},
                  ),
                  Text("DictionaryText"),
                  Spacer(
                    flex: 1,
                  ),
                  IconButton(
                    icon: Icon(Icons.play_circle_outline),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(Icons.book),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          // body containing meaning

            Container(child: Column(children: <Widget>[
              Text("Verb"),
              Text("Subscribe"),
              Container(
                child: Column(children: <Widget>[
                  Text("Meaning")
                ],),
              )
            ],),)

          ],
        ),
      ),
    );
  }
}

class TopSearchBarWidget extends StatefulWidget {
  const TopSearchBarWidget({
    Key key,
    @required this.textEditingController,
  }) : super(key: key);

  final TextEditingController textEditingController;

  @override
  _TopSearchBarWidgetState createState() => _TopSearchBarWidgetState();
}

class _TopSearchBarWidgetState extends State<TopSearchBarWidget> {
  void searchTextChanged(String value) {}

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 4,
      child: Container(
        height: 60,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {},
            ),
            Expanded(
              child: TextField(
                controller: widget.textEditingController,
                onChanged: searchTextChanged,
                autocorrect: true,
                onSubmitted: searchTextChanged,
                maxLines: 1,
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.grey.shade700,
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Search something...",
                ),
              ),
            ),
            IconButton(
              icon: Icon(Icons.clear),
              onPressed: () {
                widget.textEditingController.clear();
              },
            ),
          ],
        ),
      ),
    );
  }
}
