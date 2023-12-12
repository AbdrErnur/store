import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:store/presentation/ui/components/primary_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late final TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
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
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Column(
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
            SizedBox(
              height: 17,
            ),
            TabBar(
              controller: controller,
              tabs: const [
                Tab(text: 'Новинки'),
                Tab(text: 'Горячие'),
                Tab(text: 'Еда'),
                Tab(text: 'Холодные закуски'),
              ],
              labelColor: Color(0xFFFE00AE),
              unselectedLabelColor: Colors.black,
            ),
            Expanded(
              child: TabBarView(controller: controller, children:  [
                SingleChildScrollView(
                  child: ColoredBox(
                    color: Colors.blue,
                    child: Column(
                      children: [
                        CachedNetworkImage(
                          imageUrl: "https://vkusnotochkamenu.ru/image/cachewebp/catalog/photo/53458915-kapuchino-600x600.webp",
                          placeholder: (context, url) => CircularProgressIndicator(),
                          errorWidget: (context, url, error) => Icon(Icons.error),
                        ),
                      ],
                    ),
                  ),
                ),
                const Center(child: Text('тут будет ваша реклама2')),
                const Center(child: Text('тут будет ваша реклама3')),
                const Center(child: Text('тут будет ваша реклама4')),
              ]),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: BrPrimaryButton(text: 'text', onPressed: (){}),
      ),
    );
  }
}
