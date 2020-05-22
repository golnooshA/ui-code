import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Appview1 extends StatelessWidget {
  List<StaggeredTile> _staggeredTiles = const <StaggeredTile>[
    const StaggeredTile.count(1, 1),
    const StaggeredTile.count(2, 2),
    const StaggeredTile.count(1, 2),
    const StaggeredTile.count(2, 1),
    const StaggeredTile.count(2, 1),
    const StaggeredTile.count(1, 2),
    const StaggeredTile.count(2, 2),
    const StaggeredTile.count(1, 1),
    const StaggeredTile.count(2, 1),
    const StaggeredTile.count(2, 2),
    const StaggeredTile.count(1, 2),
    const StaggeredTile.count(1, 1),
  ];

  List<Widget> _tiles = <Widget>[
    CardImage(
        text: 'اقتصادی',
        onTap: () {},
        image: AssetImage('assets/image.jpg'),
        textColor: Colors.white),
    CardImage(
      text: 'هنری',
      onTap: () {},
      image: AssetImage('assets/image3.jpg'),
    ),
    CardImage(
      text: 'ورزشی',
      onTap: () {},
      image: AssetImage('assets/image1.jpg'),
    ),
    CardImage(
      text: 'فرهنگی',
      onTap: () {},
      image: AssetImage('assets/image2.jpg'),
    ),
    CardImage(
      text: 'علمی',
      onTap: () {},
      image: AssetImage('assets/forest.png'),
    ),
    CardImage(
      text: 'اقتصادی',
      onTap: () {},
      image: AssetImage('assets/image4.jpg'),
    ),
    CardImage(
      text: 'هنری',
      onTap: () {},
      image: AssetImage('assets/lamp.png'),
    ),
    CardImage(
      text: 'ورزشی',
      onTap: () {},
      image: AssetImage('assets/image.jpg'),
    ),
    CardImage(
      text: 'علمی',
      onTap: () {},
      image: AssetImage('assets/image1.jpg'),
    ),
    CardImage(
      text: 'اقتصادی',
      onTap: () {},
      image: AssetImage('assets/image.jpg'),
    ),
    CardImage(
      text: 'فرهنگی',
      onTap: () {},
      image: AssetImage('assets/image3.jpg'),
    ),
    CardImage(
      text: 'ورزشی',
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
  final String text;
  final EdgeInsetsGeometry padding;
  final Function() onTap;
  final ImageProvider image;
  final Color textColor;
  final Alignment alignment;

  CardImage(
      {@required this.text,
      @required this.onTap,
      this.alignment = Alignment.bottomRight,
      @required this.image,
      this.textColor = Colors.white,
      this.padding = const EdgeInsets.all(5)})
      : assert(text != null),
        assert(textColor != null),
        assert(alignment != null),
        assert(image != null),
        assert(onTap != null),
        assert(text != null);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: padding,
      elevation: 4,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Stack(
        alignment: alignment,
        children: <Widget>[
          Image(
              image: image,
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.cover),
          Container(
            padding: const EdgeInsets.all(15),
            child: Text(
              text,
              maxLines: 1,
              textDirection: TextDirection.rtl,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  color: textColor, fontSize: 16, fontWeight: FontWeight.w600),
            ),
          ),
        ],
      ),
    );
  }
}
