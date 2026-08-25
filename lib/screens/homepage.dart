import 'package:flutter/material.dart';
import 'package:portfolio_web/consonant/appcoulour.dart';
import 'package:portfolio_web/consonant/textstyle.dart';
import 'package:portfolio_web/provider/httpprovider.dart';
import 'package:portfolio_web/widgets/custom_nav.dart';
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
    context.read<Httpprovider>().fatch();
  }
  @override
  Widget build(BuildContext context){
    final data = context.watch<Httpprovider>().item;
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
                          Expanded(
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
                          ),
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
         SizedBox(
  height: 210,
  child: ListView.builder(
    scrollDirection: Axis.horizontal,
    itemCount: data.length,
    padding: const EdgeInsets.symmetric(horizontal: 10),
    itemBuilder: (context, index) {
      final item = data[index];

      return SizedBox(
        width: 300,
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.title,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: AppTextStyle.title,
                ),

                const SizedBox(height: 10),

                Text(
                  item.body,
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                ),

                const Spacer(),

                Text(
                  "User ID: ${item.userId}",
                ),
              ],
            ),
          ),
        ),
      );
    },
  ),
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