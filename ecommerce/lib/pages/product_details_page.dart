import 'package:ecommerce/Data/global_variables.dart';
import 'package:flutter/material.dart';

class ProductDetail extends StatefulWidget {
  final Map<String, Object> product;
  const ProductDetail({
    super.key,
    required this.product,
  });

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  late String selectedFilter;

  @override
  void initState() {
    super.initState();
    selectedFilter = (widget.product['model'] as List).cast<String>().first;
  }

  @override
  Widget build(BuildContext context) {
    final title = widget.product['title'];
    final image = widget.product['imageURL'];
    final price = widget.product['price'];
    final List<String> variant =
        (widget.product['model'] as List).cast<String>();

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Details',
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
              Icons.star,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30, bottom: 40),
            child: Image.asset(
              image.toString(),
              height: 250,
            ),
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(35)),
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: SizedBox(
                  child: Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 40),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                title.toString().toUpperCase(),
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 25),
                              ),
                              Text(
                                '₱ $price',
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 25),
                              )
                            ],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(bottom: 10),
                          child: Text(
                            'Available Variant',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                        ),
                        SizedBox(
                          height: 50,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: variant.length,
                            itemBuilder: (context, index) {
                              final filter = variant[index];
                              return Padding(
                                padding:
                                    const EdgeInsets.only(left: 5, right: 5),
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      selectedFilter = variant[index];
                                    });
                                  },
                                  child: Chip(
                                    backgroundColor: selectedFilter == filter
                                        ? Theme.of(context).colorScheme.primary
                                        : Theme.of(context)
                                            .colorScheme
                                            .secondary,
                                    label: Text(
                                      filter,
                                      style: TextStyle(
                                        color: selectedFilter == filter
                                            ? Colors.white
                                            : Colors.black,
                                      ),
                                    ),
                                    labelStyle: const TextStyle(
                                        fontWeight: FontWeight.bold),
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
                        const Text(
                          'Sample',
                          style: TextStyle(fontSize: 50),
                        ),
                        const Text(
                          'Sample',
                          style: TextStyle(fontSize: 50),
                        ),
                        const Text(
                          'Sample',
                          style: TextStyle(fontSize: 50),
                        ),
                        const Text(
                          'Sample',
                          style: TextStyle(fontSize: 50),
                        ),
                        const Text(
                          'Sample',
                          style: TextStyle(fontSize: 50),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
