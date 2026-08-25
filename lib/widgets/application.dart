import 'package:flutter/material.dart';
import 'package:portfolio_web/model/model.dart';

class CustomApp extends StatelessWidget{
 final Webmodel product;
 const CustomApp({required this.product,super.key});
  @override
  Widget build(BuildContext context) {
   return Container(
    height: 100,
    width: 60,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12)
    ),
    child: Column(
      children: [
        Expanded(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child:  Image.network(product.image,fit:BoxFit.cover,),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(product.appname),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(product.desc),
        ),
        
      ],
    ),
   );
    
  }
}