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
    CardImage(text: 'خبرهای برگزیده',
        onTap: () {},
        image: AssetImage('assets/image3.jpg')),
    CardImage(text: 'خبرهای اپلیکیشن',
      onTap: () {},
      image: AssetImage('assets/sale.jpg'),),
    CardImage(
      text: 'خبرها', onTap: () {}, image: AssetImage('assets/catp.jpg'),),
    CardImage(
      text: ' برگزیده', onTap: () {}, image: AssetImage('assets/catpp.jpg'),),
    CardImage(
      text: 'آیفون', onTap: () {}, image: AssetImage('assets/gift.png'),),
    CardImage(text: 'خبرهای برگزیده',
      onTap: () {},
      image: AssetImage('assets/form.jpg'),),
    CardImage(text: 'خبرهای برگزیده',
      onTap: () {},
      image: AssetImage('assets/img.jpg'),),
    CardImage(text: 'اپلیکیشن',
      onTap: () {},
      image: AssetImage('assets/lipstick.jpg'),),
    CardImage(text: 'خبرهای برگزیده',
      onTap: () {},
      image: AssetImage('assets/sale.jpg'),),
    CardImage(text: 'خبرهای برگزیده',
      onTap: () {},
      image: AssetImage('assets/gift.png'),),
    CardImage(
      text: 'آیفون', onTap: () {}, image: AssetImage('assets/catp.jpg'),),
    CardImage(text: 'خبرهای برگزیده',
      onTap: () {},
      image: AssetImage('assets/lipstick.jpg'),),

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
  final Color borderColor;
  final Color backgroundColor;
  final Color textColor;
  final Alignment alignment;


  CardImage({
    @required this.text,
    @required this.onTap,
    this.alignment = Alignment.bottomRight,
    @required this.image,
    this.backgroundColor = Colors.green,
    this.borderColor = Colors.grey,
    this.textColor = Colors.red,
    this.padding = const EdgeInsets.all(5)})
      : assert(text != null),
        assert(backgroundColor != null),
        assert(borderColor != null),
        assert(textColor != null),
        assert(alignment != null),
        assert(image != null),
        assert(onTap != null),
        assert(text != null);

  @override
  Widget build(BuildContext context) {
    return Card(
//      shape: RoundedRectangleBorder(
//          borderRadius: BorderRadius.only(topRight:  Radius.circular()),
//          side:BorderSide(width: skeleton.cardOptions.borderWidth,color: skeleton.cardOptions.borderColor)
//      ),
      margin: padding,
      elevation: 4,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Stack(
        alignment: alignment,
        children: <Widget>[
          Image(image: image,
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.cover),

          Container(
            padding: const EdgeInsets.all(15),
            child: Text(text,
              maxLines: 1,
//          textDirection: skeleton.mainOptions.direction,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: textColor,
                fontSize: 16,
              ),
            ),
          ),

        ],

      ),
    );
  }
}
