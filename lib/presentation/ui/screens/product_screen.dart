import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:store/mock.dart';

import '../components/primary_button.dart';
import '../view_models/product_veiw_model.dart';
import 'bascet_screen.dart';

class ProductScreen extends StatefulWidget {
  final ProductViewModel productViewModel;

  const ProductScreen({super.key, required this.productViewModel});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen>
    with SingleTickerProviderStateMixin {
  late final TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
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
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const BascetScreen()));
              },
              icon: const Icon(
                Icons.shopping_cart,
                color: Colors.blue,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
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
                    'СОСТАВ',
                    style: TextStyle(
                        color: Color(0xFFFE00AE), fontWeight: FontWeight.bold),
                  ),
                  Text(widget.productViewModel.compound),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
              child: Stack(
                children: [
                  DecoratedBox(
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color(0xFFFE00AE), width: 2.0),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TabBar(
                      controller: controller,
                      tabs: const [
                        Tab(text: '0.3 мл'),
                        Tab(text: '0.5 мл'),
                      ],
                      unselectedLabelColor: Colors.black,
                      indicator: BoxDecoration(
                        border: Border.all(
                            color: const Color(0xFFFE00AE), width: 2.0),
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xFFFE00AE),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 9.0,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: GestureDetector(
                onTap: (){

                },
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: const Color(0xffFE00AE),
                    border: Border.all(
                        color: const Color(0xFFFE00AE), width: 2.0),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      const Expanded(
                        child: Center(
                          child: Text(
                            'Добавить',
                            style: TextStyle(
                              color: Colors.white
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 111.0,
                        height: 50,
                        decoration: const BoxDecoration(
                          color: Color(0xFF0056FE),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(8.0),
                            bottomRight: Radius.circular(8.0),
                          ),
                        ),
                        child: const Center(
                          child: Text('750 ₸'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            // IconButton(
            //   onPressed: () {
            //     // Действие при нажатии на кнопку
            //   },
            //   icon: Container(
            //     padding: EdgeInsets.all(8.0),
            //     decoration: BoxDecoration(
            //       shape: BoxShape.circle,
            //       border: Border.all(
            //           color: Colors.black, width: 1.0), // Цвет и ширина обводки
            //     ),
            //     child: Icon(
            //       Icons.exposure_minus_1,
            //     ),
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
