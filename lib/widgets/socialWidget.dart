import 'package:flutter/material.dart';
import 'package:portfolio_web/consonant/appcoulour.dart';
import 'package:portfolio_web/consonant/textstyle.dart';

class Socialwidget extends StatelessWidget{
  const Socialwidget({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    if (width < 600) {
    return const SizedBox.shrink();
  }
    // TODO: implement build
    return LayoutBuilder(builder: (context, constrants){
      final maxwidth = constrants.maxWidth>520 ? 600.0 : constrants.maxWidth;
      final size = maxwidth;
      return SizedBox(
        width: size.toDouble(),
        child: Card(
          color: AppColors.background,
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: BorderSide(
              color: AppColors.border
            )
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Quick Info",style: AppTextStyle.h2,),
                
                Divider(),
                Row(
                  
                  children: [
                    Text(
                      "Location",style: AppTextStyle.title,
                    ),
                    SizedBox(width: size*0.30,),
                    Text("India",style: AppTextStyle.bodyLarge,)
                  ],
                ),
                Divider(),
                Row(
                  children: [
                    Text(
                      "Experiance",style: AppTextStyle.title,
                    ),
                    SizedBox(width: size*0.30,),
                    Text("3+",style: AppTextStyle.bodyLarge,)
                  ],
                ),
                Divider(),
                Row(
                  
                  children: [
                    Text(
                        "Skills",style: AppTextStyle.title,
                      ),
                      SizedBox(width: size*0.30,),
                 
                    SizedBox(
                      width: size*0.40 ,
                      child: Text("Flutter,dart,firebase,python,fastapi",softWrap: true,style: AppTextStyle.bodyLarge,))
                  ],
                ),
                Divider(),
                Row(
                  children: [
                    Text("Connect",style: AppTextStyle.title,),
                    SizedBox(width: size*0.30,),
                    Icon(Icons.camera)
                  ],
                )
              ],
            ),
          ),
        ),
      );

    });
  }
}