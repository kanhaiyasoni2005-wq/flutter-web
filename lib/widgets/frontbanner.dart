import 'package:flutter/material.dart';
import 'package:portfolio_web/consonant/appcoulour.dart';
import 'package:portfolio_web/consonant/textstyle.dart';

class FrontUi extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Hi,I'm",style: AppTextStyle.hero      
                                                      ),
                                ),
                                                    Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Flutter Developer👍 ",style: AppTextStyle.h1.copyWith(
                              color: AppColors.primary
                            ),),
                                                    ),
                                                    Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("I build buitiful and modern application in flutter",style: AppTextStyle.title,softWrap: true, ),
                                                    ),
                                                    Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              
                              children: [
                                ElevatedButton(onPressed: (){}, style: ElevatedButton.styleFrom(
                                  backgroundColor: AppColors.primaryDark,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)
                                  )
                                ),
                               
                                child: Text("Explore My Apps",style: AppTextStyle.button.copyWith(
                                  color: AppColors.background
                                ))),
                                SizedBox(width: 20,),
                                OutlinedButton(onPressed: (){},
                                style: OutlinedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)
                                  )
                                ),
                                 child: Text("Browse course",style: AppTextStyle.button,))
                              ],
                            ),
                                                    ),
                                
                                                  
                              ],
                            ),
                          );
  }
}