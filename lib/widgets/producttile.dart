import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:product_api_gtx/prdcutdet2.dart';
import '../model/product_model.dart';
import '../product_details.dart';



class ProductTile extends StatelessWidget {

  final ProductModel product;

  ProductTile(this.product);


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>product_det2(data:product)));
      },
      child: Card(
        shadowColor: Colors.grey,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        elevation: 2,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              child: Container(
                height: 100,
                width: double.infinity,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: CachedNetworkImage(
                  imageUrl: product.image!,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              product.name!,
              maxLines: 2,
              style: const TextStyle(
                fontSize:19 ,
                  fontFamily: 'avenir', fontWeight: FontWeight.w800),
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 8),

            const SizedBox(height: 8),
            Text('\$${product.price}',
                style: const TextStyle(fontSize: 15, fontFamily: 'avenir')),

          ],
        ),
      ),
    );
  }
}
