import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Appview1 extends StatelessWidget {
  List<StaggeredTile> _staggeredTiles = const <StaggeredTile>[
    const StaggeredTile.count(1, 2),
    const StaggeredTile.count(2, 1),
    const StaggeredTile.count(1, 1),
    const StaggeredTile.count(2, 2),
    const StaggeredTile.count(2, 1),
    const StaggeredTile.count(1, 2),
    const StaggeredTile.count(2, 1),
    const StaggeredTile.count(2, 2),
    const StaggeredTile.count(2, 2),
    const StaggeredTile.count(1, 1),
    const StaggeredTile.count(1, 2),
    const StaggeredTile.count(1, 1),
  ];

  List<Widget> _tiles = <Widget>[
    CardImage(onTap: () {}, image: AssetImage('assets/image.jpg')),
    CardImage(
      onTap: () {},
      image: AssetImage('assets/image3.jpg'),
    ),
    CardImage(
      onTap: () {},
      image: AssetImage('assets/image1.jpg'),
    ),
    CardImage(
      onTap: () {},
      image: AssetImage('assets/image2.jpg'),
    ),
    CardImage(
      onTap: () {},
      image: AssetImage('assets/forest.png'),
    ),
    CardImage(
      onTap: () {},
      image: AssetImage('assets/image4.jpg'),
    ),
    CardImage(
      onTap: () {},
      image: AssetImage('assets/lamp.png'),
    ),
    CardImage(
      onTap: () {},
      image: AssetImage('assets/image.jpg'),
    ),
    CardImage(
      onTap: () {},
      image: AssetImage('assets/image1.jpg'),
    ),
    CardImage(
      onTap: () {},
      image: AssetImage('assets/image.jpg'),
    ),
    CardImage(
      onTap: () {},
      image: AssetImage('assets/image3.jpg'),
    ),
    CardImage(
      onTap: () {},
      image: AssetImage('assets/lady.png'),
    ),
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

class CardImage extends StatelessWidget {
  final EdgeInsetsGeometry padding;
  final Function() onTap;
  final ImageProvider image;

  CardImage(
      {@required this.onTap,
      @required this.image,
      this.padding = const EdgeInsets.all(5)})
      : assert(image != null),
        assert(onTap != null);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: padding,
      elevation: 4,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Container(
        child: Image(
            image: image,
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.cover),
      ),
    );
  }
}
