import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Appview1 extends StatelessWidget {
  List<StaggeredTile> _staggeredTiles = const <StaggeredTile>[
    const StaggeredTile.count(1, 3),
    const StaggeredTile.count(2, 1),
    const StaggeredTile.count(1, 1),
    const StaggeredTile.count(1, 1),
    const StaggeredTile.count(2, 1),
    const StaggeredTile.count(2, 2),
    const StaggeredTile.count(1, 1),
    const StaggeredTile.count(2, 1),
    const StaggeredTile.count(1, 2),
  ];

  List<Widget> _tiles = <Widget>[
    CardIcon(
        onTap: () {},
        icon: Icons.ac_unit,
        backgroundColor: Colors.purple,
        padding: const EdgeInsets.all(5)),
    CardIcon(
        onTap: () {},
        icon: Icons.description,
        backgroundColor: Colors.tealAccent,
        padding: const EdgeInsets.all(5)),
    CardIcon(
        onTap: () {},
        icon: Icons.add,
        backgroundColor: Colors.red,
        padding: const EdgeInsets.all(5)),
    CardIcon(
        onTap: () {},
        icon: Icons.print,
        backgroundColor: Colors.yellow,
        padding: const EdgeInsets.all(5)),
    CardIcon(
        onTap: () {},
        icon: Icons.comment,
        backgroundColor: Colors.green,
        padding: const EdgeInsets.all(5)),
    CardIcon(
        onTap: () {},
        icon: Icons.search,
        backgroundColor: Colors.orange,
        padding: const EdgeInsets.all(5)),
    CardIcon(
        onTap: () {},
        icon: Icons.share,
        backgroundColor: Colors.redAccent,
        padding: const EdgeInsets.all(5)),
    CardIcon(
        onTap: () {},
        icon: Icons.category,
        backgroundColor: Colors.blue,
        padding: const EdgeInsets.all(5)),
    CardIcon(
        onTap: () {},
        icon: Icons.shopping_basket,
        backgroundColor: Colors.purple,
        padding: const EdgeInsets.all(5)),
    CardIcon(
        onTap: () {},
        icon: Icons.send,
        backgroundColor: Colors.orangeAccent,
        padding: const EdgeInsets.all(5)),
    CardIcon(
        onTap: () {},
        icon: Icons.title,
        backgroundColor: Colors.pink,
        padding: const EdgeInsets.all(5)),
    CardIcon(
        onTap: () {},
        icon: Icons.add,
        backgroundColor: Colors.teal,
        padding: const EdgeInsets.all(5)),
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

class CardIcon extends StatelessWidget {
  final EdgeInsetsGeometry padding;
  final Function() onTap;
  final IconData icon;
  final Color backgroundColor;
  final Alignment alignment;

  CardIcon(
      {@required this.onTap,
      this.alignment,
      @required this.icon,
      @required this.backgroundColor,
      this.padding = const EdgeInsets.all(5)})
      : assert(backgroundColor != null),
        assert(icon != null),
        assert(onTap != null);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: backgroundColor,
      margin: padding,
      elevation: 4,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Container(
        margin: const EdgeInsets.all(10),
        child: Icon(icon, color: Colors.black, size: 30),
      ),
    );
  }
}
