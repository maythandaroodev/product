import 'package:flutter/material.dart';
import 'package:product/constant/dimens.dart';
import 'package:product/data/model/product_model.dart';
import 'package:product/data/model/product_model_impl.dart';
import 'package:product/data/vos/product_vo/product_vo.dart';
import 'package:product/item_views/home_page_item_view/home_page_item_view.dart';
import 'package:product/pages/details_page.dart';
import 'package:product/widgets/easy_text_widget.dart';
// import 'package:product/pages/details_page.dart';
// import 'package:product/utils/extensions.dart';

final ProductModel _productModel = ProductModelImpl();

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Products"),
      ),
      body: FutureBuilder<List<ProductVO>?>(
        future: _productModel.getProduct(),
        builder: (context,snapShot){
          if(snapShot.connectionState == ConnectionState.waiting){
            return const Center(child: CircularProgressIndicator());
          }
          if(snapShot.hasError){
            return EasyTextWidget(text: 'Error Occur : ${snapShot.error}');
          }
          final result = snapShot.data;
          return ListView.separated(
              itemCount: result?.length??0,
              separatorBuilder: (context,_)=>const SizedBox(height: kSP10x,),
              itemBuilder: (context,index)=>ProductItemView(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context)=>DetailsPage(
                            slug: result?[index].slug??''
                        )
                    )
                    );
                  },
                  productVO: result?[index]
              ),
              );
        },
      )
    );
  }
}
