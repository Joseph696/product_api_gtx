// import 'package:flutter/material.dart';

// import 'model/product_model.dart';

// class ProductDetails extends StatelessWidget {
//   final ProductModel data;
//   ProductDetails({required this.data});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text(data.name!),
//         ),
//         body: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Card(
//             child: Center(
//                 child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Image.network(
//                   data.image!,
//                   height: 300,
//                   width: 300,
//                 ),
//                 Text(
//                   " ${data.name}",
//                   style:
//                       const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
//                 ),
//                 Text("\$${data.price}", style: const TextStyle(fontSize: 20)),
//                 Container(
//                   alignment: Alignment.center,
//                   child: Text('${data.description}',
                  
//                       style: const TextStyle(fontSize: 18, fontFamily: 'avenir')),
//                 ),
//                     SizedBox(height: 10,),
//                     Container(
//                       width: MediaQuery.of(context).size.width/2,
//                       child: ElevatedButton(
                        
//                         onPressed: (){}, child: Text("Buy Now",),
//                         style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.green)),
//                         ),
//                     ),
//               ],
            
//             )
//             ),
//           ),
//         ),
        
//         );
//   }
// }
