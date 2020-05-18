import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';


class MyApp4 extends StatelessWidget {
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
    CardImage(onTap: (){}, alignment: Alignment.center, image: AssetImage('assets/image3.jpg'), textColor: Colors.purple, padding: const EdgeInsets.all(5)),
    CardImage(onTap: (){}, alignment: Alignment.topLeft, image: AssetImage('assets/sale.jpg'), textColor: Colors.black, padding: const EdgeInsets.all(5)),
    CardImage( onTap: (){}, alignment: Alignment.bottomLeft, image: AssetImage('assets/cattop.jpg'), textColor: Colors.red, padding: const EdgeInsets.all(5)),
    CardImage( onTap: (){}, alignment: Alignment.topRight, image: AssetImage('assets/sofa.png'), textColor: Colors.black, padding: const EdgeInsets.all(5)),
    CardImage( onTap: (){}, alignment: Alignment.bottomCenter, image: AssetImage('assets/gift.png'), textColor: Colors.green, padding: const EdgeInsets.all(5)),
    CardImage(onTap: (){}, alignment: Alignment.centerRight, image: AssetImage('assets/form.jpg'), textColor: Colors.black, padding: const EdgeInsets.all(5)),
    CardImage(onTap: (){}, alignment: Alignment.centerLeft, image: AssetImage('assets/img.jpg'), textColor: Colors.redAccent, padding: const EdgeInsets.all(5)),
    CardImage( onTap: (){}, alignment: Alignment.center, image: AssetImage('assets/lipstick.jpg'), textColor: Colors.blue, padding: const EdgeInsets.all(5)),
    CardImage( onTap: (){}, alignment: Alignment.topCenter, image: AssetImage('assets/sale.jpg'), textColor: Colors.purple, padding: const EdgeInsets.all(5)),
    CardImage(onTap: (){}, alignment: Alignment.bottomCenter, image: AssetImage('assets/gift.png'), textColor: Colors.black, padding: const EdgeInsets.all(5)),
    CardImage(onTap: (){}, alignment: Alignment.bottomLeft, image: AssetImage('assets/catp.jpg'), textColor: Colors.pink, padding: const EdgeInsets.all(5)),
    CardImage(onTap: (){}, alignment: Alignment.center, image: AssetImage('assets/lipstick.jpg'), textColor: Colors.black, padding: const EdgeInsets.all(5)),

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
  final Color borderColor;
  final Color backgroundColor;
  final Color textColor;
  final Alignment alignment;


  CardImage({
    @required this.onTap,
    @required this.alignment,
    @required this.image,
    this.backgroundColor = Colors.green,
    this.borderColor = Colors.grey,
    this.textColor = Colors.red,
    this.padding = const EdgeInsets.all(5)})
      :
        assert(backgroundColor != null),
        assert(borderColor != null),
        assert(textColor != null),
        assert(alignment != null),
        assert(image != null),
        assert(onTap != null);

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
      child: Container(
        child: Image(image: image,
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.cover),
      ),
    );
  }
}
