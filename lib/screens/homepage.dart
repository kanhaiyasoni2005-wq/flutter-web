import 'package:flutter/material.dart';
import 'package:portfolio_web/consonant/appcoulour.dart';
import 'package:portfolio_web/consonant/textstyle.dart';

import 'package:portfolio_web/widgets/custom_nav.dart';
import 'package:portfolio_web/widgets/frontbanner.dart';
import 'package:portfolio_web/widgets/herowidget.dart';
import 'package:portfolio_web/widgets/socialWidget.dart';

class Homepage extends StatefulWidget{
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  void initState() {
   
    super.initState();
 
  }
  @override
  Widget build(BuildContext context){

    return Scaffold(
      body: Column(
        children: [
          CustomNav(),

          Expanded(child: 
          SingleChildScrollView(
            child: Column(

              children: [
                
                  
                  
                   Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    
                      child: Row(
                        children: [
                          Expanded(child: FrontUi()),
                          SizedBox(width: 40,),
                         Expanded(
                        child: HeroProfileCard(),
                         )
                        ],
                        
                      
                    ),
                  ),
                
                SizedBox(height: 20,),
                
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("My Application",style: AppTextStyle.h2,),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: OutlinedButton(onPressed: (){}, child: Text("view all")),
                    )
                  ],
                ),
   
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "My Courses", style: AppTextStyle.h2.copyWith(
                          color: AppColors.primary
                        ),
                        
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: OutlinedButton(onPressed: (){}, child: Text("View All")),
                      
                    )

                  ],
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column( crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("About Me",style: AppTextStyle.h2,),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("i ama phasaniate in fllutter developer i am learn in \n self study in our mindset \n my goal is achieve a big success until \n achieve success i will not happy..",style: AppTextStyle.title,softWrap: true,),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ElevatedButton(
                                
                                
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: AppColors.primaryDark
                                
                              ),
                                onPressed: (){},
                              
                              
                              
                               child: Text("Download Resume",style: AppTextStyle.button.copyWith(
                                color: AppColors.surface
                               ),)),
                            )
                          ],
                        ),
                      ),
                    ),
                     Expanded(child: Socialwidget())
                  ],
                )

                
              ],
            ),
          ))
        ],
      ),

    );
  }
}