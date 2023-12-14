import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:store/mock.dart';

import '../view_models/product_veiw_model.dart';

class ProductScreen extends StatefulWidget {
  final ProductViewModel productViewModel;

  const ProductScreen({super.key, required this.productViewModel});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.arrow_back_ios,
                color: Color(0xFFFE00AE),
              )),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.shopping_cart,
                color: Colors.blue,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CachedNetworkImage(
            imageUrl: widget.productViewModel.image,
            placeholder: (context, url) => const CircularProgressIndicator(),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: [
                const Text(
                  'Капучино',
                  style: TextStyle(
                      color: Color(0xFFFE00AE), fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                const Text(
                  '+55 Бонусов',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                const SizedBox(width: 7.0),
                SizedBox(
                  width: 21,
                  height: 25,
                  child: Image.asset('assets/image/ikonka_brauns.png'),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 39.0,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Состав',
                  style: TextStyle(
                      color: Color(0xFFFE00AE), fontWeight: FontWeight.bold),
                ),
                Text(widget.productViewModel.compound),
              ],
            ),
          ),
          Stack(

          ),
        ],
      ),
    );
  }
}
