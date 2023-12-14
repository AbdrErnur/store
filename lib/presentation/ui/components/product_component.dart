import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:store/presentation/ui/view_models/product_veiw_model.dart';

class ProductButton extends StatelessWidget {
  final void Function()? onPressed;
  const ProductButton({super.key, required this.productViewModel, this.onPressed});

  final ProductViewModel productViewModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Stack(
            children: [
              CachedNetworkImage(
                imageUrl: productViewModel.image,
                placeholder: (context, url) => const CircularProgressIndicator(),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  productViewModel.instock,
                  style: const TextStyle(
                    color: Color(0xFFFE00AE),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 7),
          Text(
            productViewModel.name,
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 14.0,
            ),
          ),
          const SizedBox(height: 4),
          const SizedBox(height: 4),
          InkWell(
            onTap: (){},
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(28.0),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 14.0,
                  vertical: 6,
                ),
                child: Text(
                  '\$${productViewModel.price.toStringAsFixed(0)}',
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
