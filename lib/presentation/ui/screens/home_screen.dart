import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:store/presentation/ui/components/primary_button.dart';
import 'package:store/presentation/ui/components/product_component.dart';
import 'package:store/presentation/ui/screens/product_screen.dart';
import 'package:store/presentation/ui/view_models/product_veiw_model.dart';

import '../../../mock.dart';

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
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              const AdBannerWidget(),
              const SizedBox(
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
                labelColor: const Color(0xFFFE00AE),
                unselectedLabelColor: Colors.black,
              ),
              GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.7,
                  // crossAxisSpacing: 8.0,
                ),
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: productViewModelList.length,
                itemBuilder: (BuildContext context, int index) {
                  print(index);
                  return ProductButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ProductScreen(productViewModel: productViewModelList[index])));
                    },
                      productViewModel: productViewModelList[index]);
                },
              ),
            ],
          ),
        ),
      ),
      // bottomNavigationBar: Padding(
      //   padding: const EdgeInsets.all(8.0),
      //   child: BrPrimaryButton(text: 'text', onPressed: (){}),
      // ),
    );
  }
}

class AdBannerWidget extends StatelessWidget {
  const AdBannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
      const EdgeInsets.only(left: 16.0, right: 16.0, top: 12.0),
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
    );
  }
}
