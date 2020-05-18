import 'package:flutter/material.dart';
import 'package:flutterapp/Components/buttons.dart';

class Appview1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: const Color.fromRGBO(62, 125, 82, 1),
            appBar: AppBar(
                backgroundColor: const Color.fromRGBO(69, 77, 102, 1),
                title: Center(
                    child:
                        const Text('درباره ما', textAlign: TextAlign.center))),
            body: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Wrap(
                    verticalDirection: VerticalDirection.down,
                    runSpacing: -300,
                    children: <Widget>[
                      Wrap(
                        verticalDirection: VerticalDirection.up,
                        runSpacing: -100,
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: const Color.fromRGBO(255, 253, 180, 1),
                            ),
                            margin: const EdgeInsets.only(left: 40),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  alignment: Alignment.centerRight,
                                  margin: const EdgeInsets.only(
                                      top: 120, left: 20, right: 20, bottom: 8),
                                  child: Text(
                                    'درباره ما',
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                    textDirection: TextDirection.rtl,
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color:
                                          const Color.fromRGBO(15, 67, 54, 1),
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.centerRight,
                                  margin: const EdgeInsets.only(
                                      left: 20, right: 20, bottom: 8),
                                  child: Text(
                                    'درباره ما',
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                    textDirection: TextDirection.rtl,
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color:
                                          const Color.fromRGBO(15, 67, 54, 1),
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.centerRight,
                                  margin: const EdgeInsets.only(
                                      left: 20, right: 20, bottom: 300),
                                  child: Text(
                                    'اَپِتو یک سامانه آنلاین برای ساخت و مدیریت اپلیکیشن‌های موبایل است که در آن کاربران بدون نیاز به دانش برنامه نویسی می توانند صفحات اپلیکیشن خود را طراحی کنند. اپتو برای ساخت اپلیکیشن‌های شخصی، آموزشی، اطلاع رسانی، تبدیل سایت به اپلیکیشن و …. بسیار کارآمد است.'
                                    'اپتو با هدف رسیدن به جامع‌ترین اپلیکیشن ساز فارسی کار خود را از شهریور 94 شروع کرده است و همواره کوشیده تا محیطی راحت و کارآمد برای کاربران خود ایجاد کند.',
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 10,
                                    textDirection: TextDirection.rtl,
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color:
                                          const Color.fromRGBO(69, 77, 102, 1),
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            children: <Widget>[
                              Card(
                                margin:
                                    const EdgeInsets.only(top: 20, right: 30),
                                elevation: 2,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30)),
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                child: Container(
                                    width: 300,
                                    child: Image.asset('forest.png')),
                              ),
                              Column(
                                children: <Widget>[
                                  Container(
                                    margin: const EdgeInsets.all(5),
                                    child: ButtonLink(
                                        icon: Icons.call,
                                        buttonColor:
                                            Color.fromRGBO(253, 193, 1, 1),
                                        iconColor: Colors.black,
                                        onTap: () {}),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.all(5),
                                    child: ButtonLink(
                                        icon: Icons.email,
                                        buttonColor:
                                            Color.fromRGBO(253, 193, 1, 1),
                                        iconColor: Colors.black,
                                        onTap: () {}),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          CartView(
                              onTap: () {},
                              title: 'Becoming',
                              image: AssetImage('musicCover.jpg'),
                              width: double.infinity,
                              height: 120),
                          Card(
                            margin: const EdgeInsets.only(left: 80),
                            elevation: 2,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)),
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            child: Container(
                                height: 200.0,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      colorFilter: new ColorFilter.mode(
                                          Colors.black.withOpacity(0.3),
                                          BlendMode.colorBurn),
                                      image: AssetImage('videoCover.png'),
                                      fit: BoxFit.cover),
                                )),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            )));
  }
}

class CartView extends StatelessWidget {
  final String title;
  final ImageProvider image;
  final double height;
  final double width;
  final double imageHeight;
  final Function() onTap;

  CartView({
    @required this.title,
    @required this.onTap,
    @required this.image,
    this.height = 400,
    this.width = double.infinity,
    this.imageHeight = 150,
  })  : assert(title != null),
        assert(image != null);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        elevation: 2,
        color: Colors.green,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        margin: const EdgeInsets.only(right: 60, top: 30, bottom: 30),
        child: Container(
          height: height,
          child: Row(
            textDirection: TextDirection.ltr,
            children: <Widget>[
              Expanded(
                flex: 6,
                child: Column(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Container(
                        alignment: Alignment.centerRight,
                        width: double.infinity,
                        margin: const EdgeInsets.only(
                            top: 10, left: 10, right: 10, bottom: 5),
                        child: Text(title,
                            textAlign: TextAlign.right,
                            textDirection: TextDirection.rtl,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Colors.purple,
                              fontSize: 14,
                            )),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        alignment: Alignment.centerRight,
                        width: double.infinity,
                        margin: const EdgeInsets.all(10),
                        child: Text('ddddddddddddddddddddd',
                            textAlign: TextAlign.right,
                            textDirection: TextDirection.rtl,
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Colors.purple,
                              fontSize: 14,
                            )),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                  flex: 3,
                  child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(
                              image: image, fit: BoxFit.cover)))),
            ],
          ),
        ),
      ),
      onTap: onTap,
    );
  }
}
