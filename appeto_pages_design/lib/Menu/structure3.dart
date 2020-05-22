import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Appview1 extends StatelessWidget {
  List<StaggeredTile> _staggeredTiles = const <StaggeredTile>[
    const StaggeredTile.count(2, 1),
    const StaggeredTile.count(2, 2),
    const StaggeredTile.count(1, 2),
    const StaggeredTile.count(1, 1),
    const StaggeredTile.count(1, 1),
    const StaggeredTile.count(2, 2),
    const StaggeredTile.count(1, 2),
    const StaggeredTile.count(2, 1),
    const StaggeredTile.count(2, 1),
    const StaggeredTile.count(1, 2),
    const StaggeredTile.count(2, 2),
    const StaggeredTile.count(1, 1),
  ];

  List<Widget> _tiles = <Widget>[
    CardIconText(
        text: 'ورزشی',
        onTap: () {},
        textAlignment: Alignment.topRight,
        iconAlignment: Alignment.bottomLeft,
        icon: Icons.ac_unit,
        backgroundColor: Colors.deepPurple,
        padding: const EdgeInsets.all(4)),
    CardIconText(
        text: 'فرهنگی',
        onTap: () {},
        textAlignment: Alignment.topRight,
        iconAlignment: Alignment.bottomLeft,
        icon: Icons.description,
        backgroundColor: Colors.green,
        padding: const EdgeInsets.all(4)),
    CardIconText(
        text: 'اقتصادی',
        onTap: () {},
        textAlignment: Alignment.topRight,
        iconAlignment: Alignment.bottomLeft,
        icon: Icons.add,
        backgroundColor: Colors.red,
        padding: const EdgeInsets.all(4)),
    CardIconText(
        text: 'علمی',
        onTap: () {},
        textAlignment: Alignment.topRight,
        iconAlignment: Alignment.bottomLeft,
        icon: Icons.print,
        backgroundColor: Colors.orangeAccent,
        padding: const EdgeInsets.all(4)),
    CardIconText(
        text: 'ورزشی',
        onTap: () {},
        textAlignment: Alignment.topRight,
        iconAlignment: Alignment.bottomLeft,
        icon: Icons.comment,
        backgroundColor: Colors.yellow[700],
        padding: const EdgeInsets.all(4)),
    CardIconText(
        text: 'هنری',
        onTap: () {},
        textAlignment: Alignment.topRight,
        iconAlignment: Alignment.bottomLeft,
        icon: Icons.search,
        backgroundColor: Colors.cyan,
        padding: const EdgeInsets.all(4)),
    CardIconText(
        text: 'اقتصادی',
        onTap: () {},
        textAlignment: Alignment.topRight,
        iconAlignment: Alignment.bottomLeft,
        icon: Icons.share,
        backgroundColor: Colors.pinkAccent,
        padding: const EdgeInsets.all(4)),
    CardIconText(
        text: 'علمی',
        onTap: () {},
        textAlignment: Alignment.topRight,
        iconAlignment: Alignment.bottomLeft,
        icon: Icons.category,
        backgroundColor: Colors.grey,
        padding: const EdgeInsets.all(4)),
    CardIconText(
        text: 'فرهنگی',
        onTap: () {},
        textAlignment: Alignment.topRight,
        iconAlignment: Alignment.bottomLeft,
        icon: Icons.shopping_basket,
        backgroundColor: Colors.purple[800],
        padding: const EdgeInsets.all(4)),
    CardIconText(
        text: 'ورزشی',
        onTap: () {},
        textAlignment: Alignment.topRight,
        iconAlignment: Alignment.bottomLeft,
        icon: Icons.send,
        backgroundColor: Colors.orangeAccent,
        padding: const EdgeInsets.all(4)),
    CardIconText(
        text: 'هنری',
        onTap: () {},
        textAlignment: Alignment.topRight,
        iconAlignment: Alignment.bottomLeft,
        icon: Icons.title,
        backgroundColor: Colors.green,
        padding: const EdgeInsets.all(4)),
    CardIconText(
        text: 'اقتصادی',
        onTap: () {},
        textAlignment: Alignment.topRight,
        iconAlignment: Alignment.bottomLeft,
        icon: Icons.add,
        backgroundColor: Colors.teal,
        padding: const EdgeInsets.all(4)),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SingleChildScrollView(
        child: StaggeredGridView.count(
          shrinkWrap: true,
          primary: false,
          crossAxisCount: 3,
          staggeredTiles: _staggeredTiles,
          children: _tiles,
          mainAxisSpacing: 4.0,
          crossAxisSpacing: 4.0,
          padding: const EdgeInsets.all(4.0),
        ),
      ),
    );
  }
}

class CardIconText extends StatelessWidget {
  final String text;
  final EdgeInsetsGeometry padding;
  final Function() onTap;
  final IconData icon;
  final Color borderColor;
  final Color backgroundColor;
  final Color textColor;
  final Color iconColor;
  final Alignment textAlignment;
  final Alignment iconAlignment;

  CardIconText(
      {@required this.text,
      @required this.onTap,
      @required this.textAlignment,
      @required this.iconAlignment,
      @required this.icon,
      @required this.backgroundColor,
      this.borderColor = Colors.grey,
      this.textColor = Colors.white,
      this.iconColor = Colors.white,
      this.padding = const EdgeInsets.all(5)})
      : assert(text != null),
        assert(backgroundColor != null),
        assert(borderColor != null),
        assert(textColor != null),
        assert(iconColor != null),
        assert(textAlignment != null),
        assert(iconAlignment != null),
        assert(icon != null),
        assert(onTap != null),
        assert(text != null);

  @override
  Widget build(BuildContext context) {
    return Card(
        color: backgroundColor,
        margin: padding,
        elevation: 4,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                alignment: textAlignment,
                padding: const EdgeInsets.all(20),
                child: Text(
                  text,
                  maxLines: 1,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: textColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
            Expanded(
              child: Container(
                alignment: iconAlignment,
                padding: const EdgeInsets.all(20),
                child: Icon(icon, color: iconColor, size: 30),
              ),
            ),
          ],
        ));
  }
}
