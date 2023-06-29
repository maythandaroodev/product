import 'package:flutter/material.dart';
import 'package:product/data/model/product_model_impl.dart';
import 'package:product/item_views/details_page_item_view/details_page_item_view.dart';
import 'package:product/widgets/easy_text_widget.dart';

import '../data/model/product_model.dart';
import '../data/vos/product_vo/product_vo.dart';

ProductModel _productModel = ProductModelImpl();

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key, required this.slug});
  final String slug;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("All in one Packages"),
      ),
      body: FutureBuilder<ProductVO?>(
        future: _productModel.getSingleProduct(slug),
        builder: (context,snapShot){
          if(snapShot.connectionState == ConnectionState.waiting){
            return const Center(child: CircularProgressIndicator(),);
          }
          if(snapShot.hasError){
            return Center(child: EasyTextWidget(text: 'Error Occur;${snapShot.error}'));
          }
          final product = snapShot.data;
          return Stack(
            children: [
              Positioned.fill(child: ProductDetailsItemView(
                productVO: product,
              )),
              Align(
                alignment: Alignment.bottomCenter,
                child: BuyButtonItemView(
                  onPressed: () {},
                ),
              )
            ],
          );
        },
      )
    );
  }
}


