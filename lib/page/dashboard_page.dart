import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:webster/colors.dart' as app_colors;

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Material(
            elevation: 4,
            child: Container(
              height: 120,
              child: Column(
                children: <Widget>[
                  Spacer(
                    flex: 1,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 16, right: 16, bottom: 16),
                    child: Container(
                      child: Card(
                        elevation: 2,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: <Widget>[
                              SvgPicture.asset(
                                "assets/dictionary.svg",
                                semanticsLabel: "dictionary icon",
                                height: 30,
                                color: Theme.of(context).primaryColor,
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                "Dictionary",
                                style: Theme.of(context).textTheme.headline6,
                              ),
                              Spacer(flex: 1),
                              Icon(Icons.info_outline),
                              Icon(Icons.more_vert),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: GridView.count(
              crossAxisCount: 2,
              mainAxisSpacing: 32,
              crossAxisSpacing: 32,
              shrinkWrap: true,
              children: <Widget>[
                DashBoardCard(
                  title: "Search",
                  image: "assets/search.svg",
                  onTap: () {
                    print("Search tapped");
                    Navigator.of(context).pushNamed("/search");
                  },
                ),
                DashBoardCard(
                  title: "History",
                  image: "assets/scroll.svg",
                  onTap: () {},
                ),
                DashBoardCard(
                  title: "Bookmarks",
                  image: "assets/bookmark.svg",
                  onTap: () {},
                ),
                DashBoardCard(
                  title: "Random Word",
                  image: "assets/die.svg",
                  onTap: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class DashBoardCard extends StatelessWidget {
  final String image;
  final String title;
  final Function onTap;
  const DashBoardCard({
    Key key,
    this.image,
    this.title,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Card(
        child: InkWell(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                SvgPicture.asset(
                  image,
                  semanticsLabel: title,
                  height: 50,
                  color: app_colors.brinkPink,
                ),
                Text(
                  title,
                  style: Theme.of(context).textTheme.headline6,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
