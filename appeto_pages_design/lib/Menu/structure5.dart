import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';


class MyApp5 extends StatelessWidget {
  List<StaggeredTile> _staggeredTiles = const <StaggeredTile>[

    const StaggeredTile.count(2, 1),
    const StaggeredTile.count(1, 2),
    const StaggeredTile.count(1, 3),
    const StaggeredTile.count(1, 2),
    const StaggeredTile.count(1, 1),
    const StaggeredTile.count(1, 1),
    const StaggeredTile.count(1, 2),
    const StaggeredTile.count(2, 1),
    const StaggeredTile.count(2, 1),
    const StaggeredTile.count(1, 2),
    const StaggeredTile.count(2, 2),
    const StaggeredTile.count(1, 1),
  ];

  List<Widget> _tiles = <Widget>[
    CardIconText(text: 'خبرهای برگزیده', onTap: (){}, textAlignment: Alignment.topLeft, iconAlignment: Alignment.bottomRight, icon: Icons.ac_unit, backgroundColor: Colors.purple, padding: const EdgeInsets.all(5)),
    CardIconText(text: 'اپلیکیشن', onTap: (){}, textAlignment: Alignment.topLeft, iconAlignment: Alignment.bottomRight, icon: Icons.description, backgroundColor: Colors.lightBlueAccent, padding: const EdgeInsets.all(5)),
    CardIconText(text: 'آمار', onTap: (){},   textAlignment: Alignment.topLeft, iconAlignment: Alignment.bottomRight, icon: Icons.add, backgroundColor: Colors.red, padding: const EdgeInsets.all(5)),
    CardIconText(text: 'استنباط', onTap: (){}, textAlignment: Alignment.topLeft, iconAlignment: Alignment.bottomRight, icon: Icons.print, backgroundColor: Colors.green, padding: const EdgeInsets.all(5)),
    CardIconText(text: 'آیفون', onTap: (){}, textAlignment: Alignment.topLeft, iconAlignment: Alignment.bottomRight, icon: Icons.comment, backgroundColor: Colors.pinkAccent, padding: const EdgeInsets.all(5)),
    CardIconText(text: 'اقتصاد سنجی', onTap: (){}, textAlignment: Alignment.topLeft, iconAlignment: Alignment.bottomRight, icon: Icons.search, backgroundColor: Colors.orange, padding: const EdgeInsets.all(5)),
    CardIconText(text: 'RStudio', onTap: (){}, textAlignment: Alignment.topLeft, iconAlignment: Alignment.bottomRight, icon: Icons.share, backgroundColor: Colors.deepPurple, padding: const EdgeInsets.all(5)),
    CardIconText(text: 'اپلیکیشن', onTap: (){}, textAlignment: Alignment.topLeft, iconAlignment: Alignment.bottomRight,icon: Icons.category, backgroundColor: Colors.blue, padding: const EdgeInsets.all(5)),
    CardIconText(text: 'پرتئومیک کاربردی', onTap: (){}, textAlignment: Alignment.topLeft, iconAlignment: Alignment.bottomRight, icon: Icons.shopping_basket, backgroundColor: Colors.purple, padding: const EdgeInsets.all(5)),
    CardIconText(text: ' زیست شناسی', onTap: (){}, textAlignment: Alignment.topLeft, iconAlignment: Alignment.bottomRight, icon: Icons.send, backgroundColor: Colors.orangeAccent, padding: const EdgeInsets.all(5)),
    CardIconText(text: 'آیفون', onTap: (){}, textAlignment: Alignment.topLeft, iconAlignment: Alignment.bottomRight, icon: Icons.title, backgroundColor: Colors.pink, padding: const EdgeInsets.all(5)),
    CardIconText(text: 'برگزیده', onTap: (){}, textAlignment: Alignment.topLeft, iconAlignment: Alignment.bottomRight, icon: Icons.add, backgroundColor: Colors.teal, padding: const EdgeInsets.all(5)),

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
  final Alignment textAlignment;
  final Alignment iconAlignment;


  CardIconText({
    @required this.text,
    @required this.onTap,
    @required this.textAlignment,
    @required this.iconAlignment,
    @required this.icon,
    @required this.backgroundColor,
    this.borderColor = Colors.grey,
    this.textColor = Colors.white,
    this.padding = const EdgeInsets.all(5)})
      : assert(text != null),
        assert(backgroundColor != null),
        assert(borderColor != null),
        assert(textColor != null),
        assert(textAlignment != null),
        assert(iconAlignment != null),
        assert(icon != null),
        assert(onTap != null),
        assert(text != null);

  @override
  Widget build(BuildContext context) {
    return Card(
//      shape: RoundedRectangleBorder(
//          borderRadius: BorderRadius.only(topRight:  Radius.circular()),
//          side:BorderSide(width: 3,color: borderColor)
//      ),
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
          ),

          Expanded(
            child: Container(
              alignment: iconAlignment,
              padding: const EdgeInsets.all(20),
              child:  Icon(icon , color: Colors.black, size: 30),
            ),
          ),
        ],
      )
    );
  }
}
