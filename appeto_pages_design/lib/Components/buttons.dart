import 'package:flutter/material.dart';


class ButtonLink extends StatelessWidget {
  final IconData icon;
  final EdgeInsetsGeometry padding;
  final Function() onTap;
  final double width;
  final Color buttonColor;
  final Color iconColor;

  ButtonLink({
    @required this.icon,
    @required this.onTap,
    @required this.buttonColor,
    @required this.iconColor,
    this.width = 60,
    this.padding = const EdgeInsets.all(12)
  })  : assert(icon != null),
        assert(buttonColor != null),
        assert(iconColor != null);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      child: FlatButton(
          shape: CircleBorder(),
          onPressed: (){},
          padding: padding,
          color: buttonColor,
          child: Icon(icon, color: iconColor)
      ),
    );
  }
}
