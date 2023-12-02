import 'dart:js_util';

import 'package:flutter/material.dart';

class Productlist extends StatefulWidget {
  final String productName;
  final String image;
  final String price;

  const Productlist({
    Key? key,
    required this.productName,
    required this.image,
    required this.price,
  }) : super(key: key);

  @override
  State<Productlist> createState() => _ProductlistState();
}

class _ProductlistState extends State<Productlist> {
  late bool islike = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        color: const Color.fromARGB(255, 239, 151, 151),
        elevation: 10,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    widget.image,
                    height: 100,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      children: [
                        Text(
                          widget.productName,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              color: Colors.white),
                        ),
                        Text(
                          '₱ ${widget.price}',
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Color.fromARGB(255, 122, 121, 121)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Positioned(
              top: 10,
              right: 10,
              child: Icon(
                Icons.star,
                color: Color.fromARGB(255, 239, 208, 206),
                size: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
