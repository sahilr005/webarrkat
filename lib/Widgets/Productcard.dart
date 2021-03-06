import 'package:flutter/material.dart';

class Proddetails extends StatelessWidget {
  final img;
  const Proddetails({
    Key key,
    this.img,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          alignment: Alignment.bottomCenter,
          // height: 456,
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 330,
                child: Image.network(
                  img,
                  fit: BoxFit.fill,
                ),
              ),
              Row(
                children: [
                  Icon(Icons.star_border_rounded),
                  Icon(Icons.star_border_rounded),
                  Icon(Icons.star_border_rounded),
                  Icon(Icons.star_border_rounded),
                  Icon(Icons.star_border_rounded),
                ],
              ),
              Text('Women Navy Blue Lace Maxi Dress'),
              Text(
                'Rs.699.00',
                style: TextStyle(color: Colors.green),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 3),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.teal,
                      onPrimary: Colors.white,
                      shape: const BeveledRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(2))),
                    ),
                    onPressed: () {},
                    child: Text('ADD TO CART')),
              )
            ],
          ),
        )
      ],
    );
  }
}
