import 'package:flutter/material.dart';

class Appview3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
                backgroundColor: const Color.fromRGBO(69, 79, 144, 1),
                title: Center(
                    child:
                        const Text('تماس با ما', textAlign: TextAlign.center))),
            body: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Card(
                    margin: const EdgeInsets.all(20),
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Image.asset('slideshow.jpg'),
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    margin: const EdgeInsets.only(
                        top: 20, left: 20, right: 20, bottom: 10),
                    child: Text(
                      'تماس با ما',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: const Color.fromRGBO(2, 74, 156, 1),
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    margin:
                        const EdgeInsets.only(left: 20, right: 20, bottom: 10),
                    child: Text(
                      'تماس با ما',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: const Color.fromRGBO(69, 77, 102, 0.75),
                        fontSize: 12,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    margin:
                        const EdgeInsets.only(left: 20, right: 20, bottom: 36),
                    child: Text(
                      'اَپِتو یک سامانه آنلاین برای ساخت و مدیریت اپلیکیشن‌های موبایل است که در آن کاربران بدون نیاز به دانش برنامه نویسی می توانند صفحات اپلیکیشن خود را طراحی کنند. اپتو برای ساخت اپلیکیشن‌های شخصی، آموزشی، اطلاع رسانی، تبدیل سایت به اپلیکیشن و …. بسیار کارآمد است.'
                      'اپتو با هدف رسیدن به جامع‌ترین اپلیکیشن ساز فارسی کار خود را از شهریور 94 شروع کرده است و همواره کوشیده تا محیطی راحت و کارآمد برای کاربران خود ایجاد کند.',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 10,
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: const Color.fromRGBO(69, 77, 102, 1),
                        fontSize: 14,
                      ),
                    ),
                  ),
                  Column(
                    children: <Widget>[
                      CartView(
                          onTap: () {},
                          title: 'عنوان کارت',
                          text:
                              'لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است.',
                          icon: Icons.alternate_email,
                          width: double.infinity,
                          height: 110),
                      CartView(
                          onTap: () {},
                          title: 'عنوان کارت',
                          text:
                              'لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است.',
                          icon: Icons.access_time,
                          width: double.infinity,
                          height: 110),
                      CartView(
                          onTap: () {},
                          title: 'عنوان کارت',
                          text:
                              'لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است.',
                          icon: Icons.call,
                          width: double.infinity,
                          height: 110),
                    ],
                  ),
                  Stack(
                    alignment: Alignment.center,
                    children: <Widget>[
                      Card(
                        margin: const EdgeInsets.only(
                            top: 20, left: 30, right: 30, bottom: 20),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Container(
                            height: 250.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  colorFilter: new ColorFilter.mode(
                                      Colors.black.withOpacity(0.3),
                                      BlendMode.darken),
                                  image: AssetImage('map.jpg'),
                                  fit: BoxFit.cover),
                            )),
                      ),
                      Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.all(20),
                        child: Text('مکان بروی نقشه',
                            textAlign: TextAlign.center,
                            textDirection: TextDirection.rtl,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            )),
                      )
                    ],
                  ),
                ],
              ),
            )));
  }
}

class CartView extends StatelessWidget {
  final String title;
  final String text;
  final IconData icon;
  final double height;
  final double width;
  final double imageHeight;
  final Function() onTap;

  CartView({
    @required this.title,
    @required this.text,
    @required this.onTap,
    @required this.icon,
    this.height = 120,
    this.width = double.infinity,
    this.imageHeight = 150,
  })  : assert(title != null),
        assert(text != null),
        assert(icon != null);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Wrap(
        verticalDirection: VerticalDirection.up,
        spacing: -75,
        runSpacing: -75,
        crossAxisAlignment: WrapCrossAlignment.end,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(right: 45, left: 20),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              margin: EdgeInsets.all(10),
              elevation: 3,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Container(
                width: double.infinity,
                height: height,
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      alignment: Alignment.centerRight,
                      width: double.infinity,
                      margin:
                          const EdgeInsets.only(left: 20, right: 64, top: 10, bottom: 5),
                      child: Text(title,
                          textAlign: TextAlign.right,
                          textDirection: TextDirection.rtl,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: const Color.fromRGBO(2, 74, 156, 1),
                            fontSize: 16,
                          )),
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      width: double.infinity,
                      margin: const EdgeInsets.only(
                          top: 5, right: 64, left: 20, bottom: 12),
                      child: Text(text,
                          textAlign: TextAlign.right,
                          textDirection: TextDirection.rtl,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: const Color.fromRGBO(69, 77, 102, 1),
                            fontSize: 14,
                          )),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            alignment: Alignment.topRight,
            padding: EdgeInsets.only(right: 10),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
              margin: EdgeInsets.all(10),
              elevation: 3,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  icon,
                  size: 40,
                  color: const Color.fromRGBO(62, 125, 82, 1),
                ),
              ),
            ),
          )
        ],
      ),
      onTap: onTap,
    );
  }
}
