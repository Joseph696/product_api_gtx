import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../controller/product_controller.dart';
import '../widgets/producttile.dart';

class HomePageView extends StatelessWidget {
  final ProductController productController = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text("ShopX",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 28)),
        elevation: 0,

        leading: const Icon(Icons.arrow_back_ios),
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.search)),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart),
          ),
        ],
      ),
      body: Column(
        
        
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10,right: 200),
            
            child: Text("Women",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Hand Bag",style: TextStyle(fontWeight: FontWeight.w300),),
                Text("Jewellery",style: TextStyle(fontWeight: FontWeight.w300),),
                Text("footwear",style: TextStyle(fontWeight: FontWeight.w300),),
                Text("Dresses",style: TextStyle(fontWeight: FontWeight.w300),)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
          ),
          Expanded(
            child: Obx(
              () {
                if (productController.isLoading.value) {
                  return const Center(child: CircularProgressIndicator());
                } else {
                  return GridView.builder(
                    itemCount: productController.productList.length,
                    itemBuilder: (context, index) {
                      return ProductTile(productController.productList[index]);
                    },
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                    crossAxisSpacing: 10,),
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
