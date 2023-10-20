import 'package:flutter/material.dart';
import 'C-thirdscreen.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState(
    
  );
}

class _MyWidgetState extends State<MyWidget> {
  
  @override
  Widget build(BuildContext context) {
    bool one=true;
    bool two=false;
    
    return Scaffold(
      backgroundColor: Color(0xFF1B262C),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Center(
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                child: new Image.network("https://i.postimg.cc/mDp1hrL5/smiling-pretty-girl-with-wavy-hairstyle-standing-one-leg-purple-wall-cheerful-brunette-female-model.png"
                        ),
              ) ,           
                new Positioned(
                bottom: 10,
                left: 50,
                right: 50,
                child: Container(
                   
                   width: 400,
                   height: 244, 
                             decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Color(0xFF29363D),
                   ),
                   child: Center(
                     child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top:12.0),
                          child: Text("Look good , Feel better",style: TextStyle(color: Colors.white,fontSize: 27,fontWeight: FontWeight.bold),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top:4.0),
                          child: Text("Create your individual & unique style and",style: TextStyle(color: Color(0xFF8F959E),fontSize: 16),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top:4.0),
                          child: Text("look amazing everyday.",style: TextStyle(color: Color(0xFF8F959E),fontSize: 16),),
                        ),
                        Row(
                          children: [
                             Padding(
               padding: const EdgeInsets.only(top:13.0,left: 18.0,right: 8.0),
               child: InkWell(
                onTap: () {
                          Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>MyWidget2()));
                        
                },
                 child: Container(
                  width: 168,
                  height: 60,
                   child: ElevatedButton(           
                   onPressed: () {
                          Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>MyWidget2()));
                   },
                   child: 
                   Text('Men',style: TextStyle(color: one==true? Colors.white:Color(0xFF8F959E),fontSize: 15),),
                   style: TextButton.styleFrom(
                             
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12), // <-- Radius
                        ),
                    
                    backgroundColor: one==true? Color(0xFF9775FA):Color(0xFF222E34)),
                     
                   ),
                              ),
               ),
               ),
               Padding(
               padding: const EdgeInsets.only(top:13.0,left: 15.0,right: 8.0),
               child: InkWell(
                onTap: () {
                     Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>MyWidget2()));
                        
                },
                 child: Container(
                  width: 168,
                  height: 60,
                   child: ElevatedButton(           
                   onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>MyWidget2()));
                        
                   },
                   child: 
                   Text('Woman',style: TextStyle(color: two==true? Colors.white:Color(0xFF8F959E),fontSize: 15),),
                   style: TextButton.styleFrom(
                             
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12), // <-- Radius
                        ),
                    
                    backgroundColor: two==true? Color(0xFF9775FA):Color(0xFF222E34),
                     
                   ),
                              ),
                 ),
               ),),
                          ],
                        ),
                InkWell(
                  onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>MyWidget2()));
                        
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(top:16.0),
                    child: Text('Skip',style: TextStyle(color: Color(0xFF8F959E),fontSize: 20),),
                  ),
                ),
                      ],
                     ),
                   ),
                            ),),
            ],
          ),
        ),
      ),
    );
  }
}