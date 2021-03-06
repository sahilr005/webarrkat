import 'dart:ui';
import 'package:arrkart/Widgets/Apppbar.dart';
import 'package:flutter/material.dart';
import 'Widgets/Productcard.dart';

class Page2 extends StatefulWidget {
  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  List proimg = [
    'https://cdn.shopify.com/s/files/1/0518/7728/1982/products/SAI_2753g_1024x.jpg?v=1611234422',
    'https://cdn.shopify.com/s/files/1/0518/7728/1982/products/SAI_2737g_1024x.jpg?v=1611234294',
    'https://cdn.shopify.com/s/files/1/0518/7728/1982/products/SAI_2701g_f7359bca-e3ae-4fe9-84f6-0c74357c5945_1024x.jpg?v=1611234157',
    'https://cdn.shopify.com/s/files/1/0518/7728/1982/products/SAI_2681g_1024x.jpg?v=1611234065',
    'https://cdn.shopify.com/s/files/1/0518/7728/1982/products/SAI_2676g_1024x.jpg?v=1611233758',
    'https://cdn.shopify.com/s/files/1/0518/7728/1982/products/SAI_2636g_1024x.jpg?v=1611233243',
    'https://cdn.shopify.com/s/files/1/0518/7728/1982/products/0P3A6886g_1024x.jpg?v=1611207163',
    'https://cdn.shopify.com/s/files/1/0518/7728/1982/products/3L6A1678g_1024x.jpg?v=1611140868',
    'https://cdn.shopify.com/s/files/1/0518/7728/1982/products/3L6A1662g_1024x.jpg?v=1611140443',
    'https://cdn.shopify.com/s/files/1/0518/7728/1982/products/3L6A1658g_1024x.jpg?v=1611140289',
    'https://cdn.shopify.com/s/files/1/0518/7728/1982/products/3L6A1653g_1024x.jpg?v=1611138543',
    'https://cdn.shopify.com/s/files/1/0518/7728/1982/products/3L6A8272g_1024x.jpg?v=1611137000',
    'https://cdn.shopify.com/s/files/1/0518/7728/1982/products/3L6A8268g_1024x.jpg?v=1611136863',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 30),
            Center(
                child: Text(
              'Latest Saree Collection',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            )),
            SizedBox(height: 30),
            AnimatedContainer(
              duration: Duration(seconds: 2),
              child: Image.network(
                  'https://cdn.shopify.com/s/files/1/0518/7728/1982/files/banner2_0c31bf3f-ebcb-4067-8234-3b1e31ceb440.jpg?v=1609831527'),
            ),
            Container(
              width: MediaQuery.of(context).size.width * .6,
              child: Center(
                child: GridView.count(
                  crossAxisCount: 4,
                  addRepaintBoundaries: true,
                  addSemanticIndexes: true,
                  childAspectRatio: 16 / 27,
                  shrinkWrap: true,
                  children: [
                    Proddetails(img: proimg[0]),
                    Proddetails(img: proimg[1]),
                    Proddetails(img: proimg[2]),
                    Proddetails(img: proimg[3]),
                    Proddetails(img: proimg[4]),
                    Proddetails(img: proimg[5]),
                    Proddetails(img: proimg[6]),
                    Proddetails(img: proimg[7]),
                    Proddetails(img: proimg[8]),
                    Proddetails(img: proimg[9]),
                    Proddetails(img: proimg[10]),
                    Proddetails(img: proimg[11]),
                    Proddetails(img: proimg[12]),
                  ],
                ),
              ),
            ),
            Container(
              height: 300,
            ),
          ],
        ),
      ),
    );
  }
}
