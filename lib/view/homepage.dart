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
      
      backgroundColor: Colors.blue[300],
      appBar: AppBar(
        centerTitle: true,
        shadowColor: Colors.blue[700],
        title: Text("ShopX.com",
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 28)),
        elevation: 0,
        leading: const Icon(Icons.arrow_back_ios),
        actions: [
         // IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart),
          ),
        ],
      ),
      
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
            backgroundColor: Colors.blue[300],
            label: "",
            icon: Icon(Icons.shopping_bag_sharp)),
        BottomNavigationBarItem(label: "", icon: Icon(Icons.home)),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "")
      ]),
      body: Column(

        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: SearchBar(
              hintText: "Search...",
              // trailing: ,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, right: 200),
            child: Text(
              "Women",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Hand Bag",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                Text(
                  "Jewellery",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                Text(
                  "footwear",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                Text(
                  "Dresses",
                  style: TextStyle(fontWeight: FontWeight.w500),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Categories",
                  style: TextStyle(
                      color: Colors.blue[900],
                      fontSize: 26,
                      fontWeight: FontWeight.bold),
                )),
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
                  return Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GridView.builder(
                        itemCount: productController.productList.length,
                        itemBuilder: (context, index) {
                          return ProductTile(
                              productController.productList[index]);
                        },
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 5,
                          crossAxisSpacing: 10,
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.blue[600],
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20))),

                    //padding:  EdgeInsets.only(left: 15,right: 15),
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
