

import 'package:flutter/material.dart';
import 'E-fifthscreen.dart';
import 'D-forthscreen.dart';
import 'I-mainscreen.dart';
import 'B-secondscreen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class MyWidget2 extends StatefulWidget {
  const MyWidget2({super.key});

  @override
  State<MyWidget2> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget2> {
  launchURLInBrowser(String url) async {if (await canLaunchUrlString(url)) {await launchUrlString(url);} else { print("could not reach website");}}
  Future<void> saved_account() async {
     SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
      var saved=sharedPreferences.getBool("remember1");
      if(saved==true){
       Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>MyWidget8()));
      }
      else{
         Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>MyWidget4()));
      }
  }
  Future<void> saved_account2() async {
     SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
      var saved=sharedPreferences.getBool("remember2");
      if(saved==true){
       Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>MyWidget8()));
      }
      else{
         Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>MyWidget3()));
      }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      backgroundColor:Color(0xFF1B262C) ,
      leading:IconButton(color: Color(0xFF222E34),icon: Icon(Icons.arrow_back,color: Color(0xFFF5F8FB),),
  
        onPressed: () {
  
  Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>MyWidget()));
                          
        },
  
      ),
),
body: Container(
  width: double.infinity,
  height: double.infinity,
  color: Color(0xFF1B262C),
  
    child: Center(
      child: Column(
         children: [
           Padding(
                      padding: const EdgeInsets.only(top:12.0),
                      child: Text("Let's Get Started",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
                    ),
      Container(width: double.infinity,height: 150,),
      Padding(
               padding: const EdgeInsets.only(top:13.0,left: 12.0,right: 12.0),
               child: Container(
                width: double.infinity,
                height: 60,
                 child: ElevatedButton(           
                 onPressed: () {
                   launchURLInBrowser("https://www.facebook.com/");
                 },
                 child: 
                 Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                   children: [
                    Container(height: double.infinity,width: 135,),
                      Padding(
                        padding:EdgeInsets.only(bottom: 4.0),
                        child: IconButton(
                            icon:   
                        new Image.network(
                          "https://i.postimg.cc/d3GYt9Zv/Facebook.png"),
                         onPressed: () { },
                            
                          ),
                      ),
                     Text('Facebook',style: TextStyle(color: Colors.white,fontSize: 20),),
                   ],
                 ),
                 style: TextButton.styleFrom(
                           
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12), // <-- Radius
                      ),
                  
                  backgroundColor: Color(0xFF4267B2)),
                   
                 ),
                            ),
               ),
           Padding(
               padding: const EdgeInsets.only(top:13.0,left: 12.0,right: 12.0),
               child: Container(
                width: double.infinity,
                height: 60,
                 child: ElevatedButton(           
                 onPressed: () {
                 launchURLInBrowser("https://twitter.com/");
                 },
                 child: 
                 Row(
                   mainAxisAlignment: MainAxisAlignment.start,
                   children: [
                    Container(height: double.infinity,width: 135,),
                      Padding(
                        padding:EdgeInsets.only(bottom: 4.0),
                        child: IconButton(
                            icon:   
                        new Image.network(
                          "https://i.postimg.cc/L4GWxfYB/Twitter.png"),
                         onPressed: () {
                            },
                            
                          ),
                      ),
                    
                     Text('Twitter',style: TextStyle(color: Colors.white,fontSize: 20),),
                   ],
                 ),
                 style: TextButton.styleFrom(
                           
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12), // <-- Radius
                      ),
                  
                  backgroundColor: Color(0xFF1DA1F2)),
                   
                 ),
                            ),
               ),
         Padding(
               padding: const EdgeInsets.only(top:13.0,left: 12.0,right: 12.0),
               child: Container(
                width: double.infinity,
                height: 60,
                 child: ElevatedButton(           
                 onPressed: () {
                    launchURLInBrowser("https://www.google.com/");
                 },
                 child: 
                 Row(
                   mainAxisAlignment: MainAxisAlignment.start,
                   children: [
                    Container(height: double.infinity,width: 135,),
                      Padding(
                        padding:EdgeInsets.only(bottom: 4.0),
                        child: IconButton(
                            icon:   
                        new Image.network(
                          "https://i.postimg.cc/mDYPK7Zz/Google.png"),
                         onPressed: () {
                              // do something
                            },
                            
                          ),
                      ),
                     Text('Google',style: TextStyle(color: Colors.white,fontSize: 20),),
                   ],
                 ),
                 style: TextButton.styleFrom(
                           
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12), // <-- Radius
                      ),
                  
                  backgroundColor: Color(0xFFEA4335)),
                   
                 ),
                            ),
               ),
                     Container(width: double.infinity,height: 140,),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom:4.0),
                          child: Text("Already have an account?",style: TextStyle(color: Color(0xFF8F959E),fontSize: 16),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom:4.0),
                          child: InkWell(
                            onTap: () {
                             saved_account();
                            },
                            child: Text(" Signin",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w400),)),
                        ),
                      ],
                     ),
                Padding(
                  padding: const EdgeInsets.only(top:8.0),
                  child: Container(
                  width: double.infinity,
                  height: 60,
                   child: ElevatedButton(           
                   onPressed: () {
                    saved_account2();
                     Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>MyWidget3()));
                   },
                   child: 
                   Text('Create An Account',style: TextStyle(color: Colors.white,fontSize: 20),),
                   style: TextButton.styleFrom(
                             
                        shape: RoundedRectangleBorder(
                        ),
                    
                    backgroundColor: Color(0xFF9775FA)),
                     
                   ),
                              ),
                ),
         ],
        
      
      ),
    ),
  
  ),

    );
  }
}