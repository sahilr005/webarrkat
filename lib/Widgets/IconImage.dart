import 'package:arrkart/Page2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

Wrap Iconimages(BuildContext context) {
  return Wrap(
    crossAxisAlignment: WrapCrossAlignment.center,
    alignment: WrapAlignment.spaceEvenly,
    runSpacing: 20,
    spacing: 40,
    clipBehavior: Clip.hardEdge,
    children: [
      InkWell(
        borderRadius: BorderRadius.circular(100),
        hoverColor: Colors.green.withOpacity(.3),
        customBorder: Border.all(),
        mouseCursor: MouseCursor.defer,
        radius: 1,
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (a) => Page2()));
        },
        child: AnimatedContainer(
          duration: Duration(milliseconds: 500),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
          ),
          child: Image.network(
            'https://cdn.shopify.com/s/files/1/0518/7728/1982/files/saree1_1024x.png?v=1608535960',
            height: MediaQuery.of(context).size.height * .2,
          ),
        ),
      ),
      Image.network(
        'https://cdn.shopify.com/s/files/1/0518/7728/1982/files/kurti_1024x.png?v=1608099102',
        height: MediaQuery.of(context).size.height * .2,
      ),
      Image.network(
        'https://cdn.shopify.com/s/files/1/0518/7728/1982/files/3_1024x.png?v=1608099120',
        height: MediaQuery.of(context).size.height * .2,
      ),
      Image.network(
        'https://cdn.shopify.com/s/files/1/0518/7728/1982/files/salwar_83243b4c-773f-4719-aa9c-a3909083d75f_1024x.png?v=1608786275',
        height: MediaQuery.of(context).size.height * .2,
      ),
      Image.network(
        'https://cdn.shopify.com/s/files/1/0518/7728/1982/files/lehenga_1024x.png?v=1608786313',
        height: MediaQuery.of(context).size.height * .2,
      ),
      Image.network(
        'https://cdn.shopify.com/s/files/1/0518/7728/1982/files/gown_1024x.png?v=1608789141',
        height: MediaQuery.of(context).size.height * .2,
      ),
      Image.network(
        'https://cdn.shopify.com/s/files/1/0518/7728/1982/files/8_1024x.png?v=1608099179',
        height: MediaQuery.of(context).size.height * .2,
      ),
      Image.network(
        'https://cdn.shopify.com/s/files/1/0518/7728/1982/files/toppp_1024x.png?v=1608786357',
        height: MediaQuery.of(context).size.height * .2,
      ),
      Image.network(
        'https://cdn.shopify.com/s/files/1/0518/7728/1982/files/9_1024x.png?v=1608099194',
        height: MediaQuery.of(context).size.height * .2,
      ),
      Image.network(
        'https://cdn.shopify.com/s/files/1/0518/7728/1982/files/kid_lengha_1024x.png?v=1608615514',
        height: MediaQuery.of(context).size.height * .2,
      ),
    ],
  );
}
