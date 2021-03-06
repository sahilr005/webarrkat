import 'package:flutter/material.dart';

AppBar buildAppBar() {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0.1,
    title: Wrap(
      alignment: WrapAlignment.center,
      crossAxisAlignment: WrapCrossAlignment.center,
      textDirection: TextDirection.ltr,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 20, bottom: 20),
          child: Image.network(
              'https://cdn.shopify.com/s/files/1/0518/7728/1982/files/AR_0ec9f781-fcb0-44b6-94da-52329ad1cab2_65x.png?v=1608540357'),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30, right: 18),
          child: Text(
            'sare',
            style: TextStyle(
              color: Colors.black87,
              fontSize: 16,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: Text(
            'Lahenga',
            style: TextStyle(
              color: Colors.black87,
              fontSize: 14,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: Text(
            'indo western',
            style: TextStyle(
              color: Colors.black87,
              fontSize: 14,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: Text(
            'man',
            style: TextStyle(
              color: Colors.black87,
              fontSize: 14,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: Text(
            'Kide',
            style: TextStyle(
              color: Colors.black87,
              fontSize: 14,
            ),
          ),
        ),
      ],
    ),
    actions: [
      IconButton(
        padding: EdgeInsets.only(right: 26),
        icon: Icon(
          Icons.search,
          color: Colors.black54,
          size: 30,
        ),
        onPressed: () {},
      ),
      IconButton(
        padding: EdgeInsets.only(right: 30),
        icon: Icon(
          Icons.shopping_cart_outlined,
          color: Colors.black54,
          size: 30,
        ),
        onPressed: () {},
      ),
    ],
  );
}
