import 'package:flutter/material.dart';
import 'package:portfolio_web/consonant/appcoulour.dart';

class CustomNav  extends StatelessWidget{
  const CustomNav({super.key});
  @override
  Widget build(BuildContext context){
    final width = MediaQuery.of(context).size.width;
    final ismobile = width<800;
    return Container(
      height: 64,
      width: double.infinity,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top:5,right: 20,),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Image.asset("assets/images/grofix.png",height: 50,width: 50,fit: BoxFit.cover,),
                
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("MyFlutter",style: 
                TextStyle(color: AppColors.primary, fontSize: 30, fontWeight: FontWeight.w700),),
                Text(
                      "Build • Learn • Grow",
                      style: TextStyle(color: Colors.grey,fontSize: 13, fontWeight: FontWeight.w500),
                    ),
              ],
            ),
            Spacer(),
            if(!ismobile)...[
              _nav("Home" ),
              _nav("About"),
              _nav("App"),
        
              ElevatedButton(onPressed: (){},
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                ),
                backgroundColor:  AppColors.primaryDark,
                padding: EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 15,
                ),
              ),
              
               child: Text("Get in Touch",style:  TextStyle(color: Colors.white,fontSize:  15, fontWeight: FontWeight.w600),))
              
        
            ]else
              IconButton(onPressed: (){}, icon: Icon(Icons.menu))
        
            
        
          ],
        ),
      ),

 
    );

  
  }
  Widget _nav(String title){
    return Padding(padding: EdgeInsets.all(8),
    child:  TextButton(onPressed: (){}, child: Text(title,style: TextStyle(fontSize: 16, ),)),);
  }
}