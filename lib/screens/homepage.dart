import 'package:flutter/material.dart';
import 'package:portfolio_web/consonant/appcoulour.dart';
import 'package:portfolio_web/consonant/textstyle.dart';

import 'package:portfolio_web/widgets/custom_nav.dart';
import 'package:portfolio_web/widgets/frontbanner.dart';
import 'package:portfolio_web/widgets/herowidget.dart';
import 'package:provider/provider.dart';

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
                Container(
                  
                  
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    
                      child: Row(
                        children: [
                          FrontUi(),
                          SizedBox(width: 40,),
                         Expanded(
                        child: HeroProfileCard(),
                         )
                        ],
                        
                      
                    ),
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
                )
                
              ],
            ),
          ))
        ],
      ),

    );
  }
}