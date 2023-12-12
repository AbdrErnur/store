import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {},
          color: Colors.black,
        ),
        title: Image.asset('assets/image/abbarLogo.png'),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.shopping_cart,
                  color: Colors.black,
                )),
          ),
        ],
        backgroundColor: Colors.white,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 12.0),
            child: SizedBox(
              height: 236,
              child: Stack(
                children: [
                  Image.asset(
                    'assets/image/reclama.png',
                    scale: 0.8,
                  ),
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(16),
                        bottomLeft: Radius.circular(16)),
                    child: Container(
                      color: Colors.black26,
                      width: 115,
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 19,
                          ),
                          DecoratedBox(
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(28.0),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 16.0,
                              ),
                              child: Text(
                                '-50%',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 14,
                          ),
                          const SizedBox(
                            height: 95,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                VerticalDivider(
                                  color: Colors.white,
                                ),
                                Text(
                                    'На любой\n напиток\n при\n покупку\n тоста',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold))
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
