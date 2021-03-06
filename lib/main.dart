import 'dart:async';
import 'package:arrkart/Page2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'Widgets/Apppbar.dart';
import 'Widgets/IconImage.dart';
import 'Widgets/Productcard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Arrakart',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var homeimg =
      'https://cdn.shopify.com/s/files/1/0518/7728/1982/files/01.Bridal_Collection_5518c8ae-37de-45c7-aaf9-b15ae21588b2_x1024.jpg?v=1611992705';

  List offerimg = [
    '//cdn.shopify.com/s/files/1/0518/7728/1982/files/banner2_faeab193-9d4e-4de0-a62a-6ae92fecdd98_2048x.jpg?v=1608549747',
    '//cdn.shopify.com/s/files/1/0518/7728/1982/files/banner1_2048x.jpg?v=1608548608'
  ];
  var alignment = Alignment.bottomCenter;
  var height = 0.0;

  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      setState(() {
        alignment = Alignment.topCenter;
        height = MediaQuery.of(context).size.height;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            AnimatedContainer(
              curve: Curves.linearToEaseOut,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              duration: Duration(seconds: 2),
              alignment: alignment,
              height: height,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: NetworkImage(homeimg),
                fit: BoxFit.scaleDown,
                alignment: Alignment.center,
              )),
            ),
            Center(
                child: Text(
              'CATEGORIES TO BAG',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            )),
            AnimatedPadding(
              duration: Duration(seconds: 2),
              padding: const EdgeInsets.only(
                  left: 30, right: 40, top: 50, bottom: 50),
              child: Container(
                  constraints: BoxConstraints(maxWidth: 1000),
                  child: Iconimages(context)),
            ),
            Center(
                child: Text(
              'TRENDING PRODUCTS',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            )),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AnimatedPadding(
                  duration: Duration(seconds: 2),
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Wasten',
                    style: TextStyle(color: Colors.black54, fontSize: 21),
                  ),
                ),
                AnimatedPadding(
                  duration: Duration(seconds: 2),
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'saree',
                    style: TextStyle(color: Colors.black54, fontSize: 21),
                  ),
                ),
                AnimatedPadding(
                  duration: Duration(seconds: 2),
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Kurte',
                    style: TextStyle(color: Colors.black54, fontSize: 21),
                  ),
                ),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Proddetails(
                    img:
                        'https://cdn.shopify.com/s/files/1/0518/7728/1982/products/G-133Zorba358YellowAg_800x.jpg?v=1609329202',
                  ),
                  Proddetails(
                    img:
                        'https://cdn.shopify.com/s/files/1/0518/7728/1982/products/G-130DeltinStyle1007GreenAa_800x.jpg?v=1609328534',
                  ),
                  Proddetails(
                    img:
                        'https://cdn.shopify.com/s/files/1/0518/7728/1982/products/G-145ParleBlueGownAg_800x.jpg?v=1609330334',
                  ),
                  Proddetails(
                    img:
                        'https://cdn.shopify.com/s/files/1/0518/7728/1982/products/G-136Zorba357GajariGownAg_800x.jpg?v=1609329991',
                  ),
                  Proddetails(
                    img:
                        'https://cdn.shopify.com/s/files/1/0518/7728/1982/products/G-135Zorba352NevyBlueAg_800x.jpg?v=1609329765',
                  ),
                ],
              ),
            ),
            Center(
                child: Text(
              'LATEST SAREE COLLECTION',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            )),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Proddetails(
                    img:
                        'https://cdn.shopify.com/s/files/1/0518/7728/1982/products/SAI_2753g_1024x.jpg?v=1611234422',
                  ),
                  Proddetails(
                    img:
                        'https://cdn.shopify.com/s/files/1/0518/7728/1982/products/SAI_2737g_1024x.jpg?v=1611234294',
                  ),
                  Proddetails(
                    img:
                        'https://cdn.shopify.com/s/files/1/0518/7728/1982/products/SAI_2701g_f7359bca-e3ae-4fe9-84f6-0c74357c5945_1024x.jpg?v=1611234157',
                  ),
                  Proddetails(
                    img:
                        'https://cdn.shopify.com/s/files/1/0518/7728/1982/products/SAI_2681g_1024x.jpg?v=1611234065',
                  ),
                  Proddetails(
                    img:
                        'https://cdn.shopify.com/s/files/1/0518/7728/1982/products/SAI_2676g_1024x.jpg?v=1611233758',
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * .5,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: NetworkImage(offerimg[1]),
                fit: BoxFit.fitWidth,
                alignment: Alignment.center,
              )),
            ),
            SizedBox(height: 20),
            Center(
                child: Text(
              'DESIGNER LEHENGA',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            )),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Proddetails(
                    img:
                        'https://cdn.shopify.com/s/files/1/0518/7728/1982/products/L-62TulsiMaroonAg_800x.jpg?v=1609483178',
                  ),
                  Proddetails(
                    img:
                        'https://cdn.shopify.com/s/files/1/0518/7728/1982/products/L-61TulsiCoffeeAg_800x.jpg?v=1609483033',
                  ),
                  Proddetails(
                    img:
                        'https://cdn.shopify.com/s/files/1/0518/7728/1982/products/L-60TulsiBlueAg_800x.jpg?v=1609482856',
                  ),
                  Proddetails(
                    img:
                        'https://cdn.shopify.com/s/files/1/0518/7728/1982/products/L-59TulsiBlackAg_800x.jpg?v=1609481464',
                  ),
                  Proddetails(
                    img:
                        'https://cdn.shopify.com/s/files/1/0518/7728/1982/products/L-59TulsiBlackAg_800x.jpg?v=1609481464',
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Center(
                child: Text(
              "WOMEN'S T-SHIRTS",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            )),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Proddetails(
                    img:
                        'https://cdn.shopify.com/s/files/1/0518/7728/1982/products/Tipsy335YellowAg_800x.jpg?v=1609143361',
                  ),
                  Proddetails(
                    img:
                        'https://cdn.shopify.com/s/files/1/0518/7728/1982/products/Tipsy332MaroonAg_800x.jpg?v=1609143212',
                  ),
                  Proddetails(
                    img:
                        'https://cdn.shopify.com/s/files/1/0518/7728/1982/products/Tipsy324RedAg_800x.jpg?v=1609142940',
                  ),
                  Proddetails(
                    img:
                        'https://cdn.shopify.com/s/files/1/0518/7728/1982/products/Tipsy319PistaAg_800x.jpg?v=1609142516',
                  ),
                  Proddetails(
                    img:
                        'https://cdn.shopify.com/s/files/1/0518/7728/1982/products/Tipsy319GreenAg_800x.jpg?v=1609142365',
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * .5,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: NetworkImage(offerimg[0]),
                fit: BoxFit.fitWidth,
                alignment: Alignment.center,
              )),
            ),
            SizedBox(height: 20),
            Center(
                child: Text(
              'SPLENDING DRESS MATERIAL',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            )),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Proddetails(
                    img:
                        'https://cdn.shopify.com/s/files/1/0518/7728/1982/products/3212Aa_800x.jpg?v=1611122184',
                  ),
                  Proddetails(
                    img:
                        'https://cdn.shopify.com/s/files/1/0518/7728/1982/products/3211Aa_800x.jpg?v=1611119797',
                  ),
                  Proddetails(
                    img:
                        'https://cdn.shopify.com/s/files/1/0518/7728/1982/products/3210Aa_800x.jpg?v=1611119625',
                  ),
                  Proddetails(
                    img:
                        'https://cdn.shopify.com/s/files/1/0518/7728/1982/products/3209Aa_800x.jpg?v=1611119035',
                  ),
                  Proddetails(
                    img:
                        'https://cdn.shopify.com/s/files/1/0518/7728/1982/products/3208Aa_800x.jpg?v=1611054577',
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              color: Colors.green[900].withOpacity(.76),
              child: Center(
                child: Column(
                  children: [
                    SizedBox(height: 12),
                    Text(
                      'Sign Up and Join The Arrakart family!',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 24),
                    ),
                    SizedBox(height: 4),
                    Text(
                      'Join our mailing list for exclusive access to the latest fashion trends, tips,and more.',
                      style: TextStyle(
                          color: Colors.white70,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    SizedBox(height: 8),
                    Container(
                      width: MediaQuery.of(context).size.width * .3,
                      height: 30,
                      color: Colors.white,
                      child: Center(
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: 'Enter your Email',
                              hintStyle: TextStyle(color: Colors.black)),
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                  ],
                ),
              ),
            ),
            Container(
              height: 100,
              color: Colors.white70,
            ),
          ],
        ),
      ),
    );
  }

  Container RoundContaion({img, context}) {
    return Container(
      height: MediaQuery.of(context).size.height * .2,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(image: NetworkImage(img))),
    );
  }
}
