import 'dart:ffi';

import 'package:ecommerce/Data/global_variables.dart';
import 'package:ecommerce/pages/product_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_launcher_icons/xml_templates.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> filters = const [
    'All',
    'CPU',
    'GPU',
    'CASE',
    'LAPTOP',
    'MOUSE'
  ];
  late String selectedFilter;

  @override
  void initState() {
    super.initState();
    selectedFilter = filters[0];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Computer Collection',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_basket,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 20),
            child: SizedBox(
              height: 55,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  prefixIcon: Icon(
                    Icons.search,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
            child: SizedBox(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: const Image(
                  image: AssetImage(
                    'assets/images/comp.jpg',
                  ),
                  width: 3600,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8, left: 20, right: 20),
            child: SizedBox(
              height: 70,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: filters.length,
                itemBuilder: (context, index) {
                  final filter = filters[index];
                  return Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedFilter = filters[index];
                        });
                      },
                      child: Chip(
                        backgroundColor: selectedFilter == filter
                            ? Theme.of(context).colorScheme.primary
                            : Theme.of(context).colorScheme.secondary,
                        label: Text(
                          filter,
                          style: TextStyle(
                            color: selectedFilter == filter
                                ? Colors.white
                                : Colors.black,
                          ),
                        ),
                        side: BorderSide.none,
                        labelStyle:
                            const TextStyle(fontWeight: FontWeight.bold),
                        padding: const EdgeInsets.all(12),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: products.length,
              itemBuilder: (context, index) {
                final product = products[index];
                final iimage = products[index]['imageURL'];
                final iproduct = products[index]['title'];
                final iprice = products[index]['price'];
                return Productlist(
                  productName: iproduct.toString(),
                  image: iimage.toString(),
                  price: iprice.toString(),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
