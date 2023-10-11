import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:product_api_gtx/model/product_model.dart';
import 'model/product_model.dart';

class product_det2 extends StatelessWidget {
  final ProductModel data;
  product_det2({required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[600],
      appBar: AppBar(
        backgroundColor: Colors.blue[600],
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back)),
        title: Text(data.name!,style: TextStyle(color: Colors.black,fontSize: 28, ),),
      ),
      body: Scaffold(
        backgroundColor: Colors.blue[600],
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Stack(children: [
            Container(
              height: 500,
              margin: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.3,
              ),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.blue[200],
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          
                         // mainAxisAlignment : MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 100,
                            ),
                           
                            Row(
                              children: [
                                 Text("Colors"),
                                Container(
                                  height: 22,
                                  width: 22,
                                  decoration: BoxDecoration(
                                    color: Colors.blue[700]
                                    
                                  ),
                                ),
                                Container(
                                  
                                    height: 22,
                                  width: 22,decoration: BoxDecoration(
                                    
                                    color: Colors.brown
                                  ),),
                                Container(
                                    height: 22,
                                  width: 22,
                                  decoration: BoxDecoration(
                                    color: Colors.black
                                  ),)
                              ],
                            ),
                            SizedBox(height: 20,),
                           Text(data.description!,style: TextStyle(fontSize: 23,),),
                           SizedBox(
                            height: 60,
                           ),
                           Container(
                            width: MediaQuery.of(context).size.width/2,
                             child: ElevatedButton(
                              style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.green)),
                              onPressed: (){}, child: Text("Buy")),
                           )
                          ],
                        ),
                      ),
            ),
            Column(
              children: [
                
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Shop with Shopx",style: TextStyle(color: Colors.white,fontSize: 22),),
                  )),
                Text("Brand : ${data.brand}",style: TextStyle(color: Colors.white,fontSize: 18),),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Row(
                    children: [
                      RichText(text: TextSpan(
                        children: [
                          
                          TextSpan(text: "Price",style: TextStyle(fontSize: 15)),
                          TextSpan(text: "\$${data.price}",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold) )
                        ]
                      )
                      ),
                      SizedBox(width: 20,),
                      Expanded(child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Container(
                          
                          height: 280,
                          width: 30,
                          decoration: BoxDecoration(
                      
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.blue[300],
                        image: DecorationImage(
                          
                          fit: BoxFit.cover,
                          image: NetworkImage(data.image!,))
                        
                          ),
                        ),
                      ))
                    ],
                  ),
                )
              ],
            )
          ]
          ),
        ),
      ),
    );
  }
}
