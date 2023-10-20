import 'package:flutter/material.dart';
import 'H-eighthscreen.dart';
import 'F-sixthscreen.dart';

class MyWidget6 extends StatefulWidget {
  const MyWidget6({super.key});

  @override
  State<MyWidget6> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget6> {
  var c=TextEditingController();
  var c1=TextEditingController();
  var c2=TextEditingController();
  var c3=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
  backgroundColor:Color(0xFF1B262C) ,
  leading:       IconButton(
       color: Color(0xFF222E34),
        icon: Icon(
  
          Icons.arrow_back,
  
          color: Color(0xFFF5F8FB),
  
        ),
  
        onPressed: () {
  
  Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>MyWidget5()));
                          
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
                      child: Text("Verification Code",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
                    ),
      Container(width: double.infinity,height: 250,
      child: new Image.network(
    "https://i.postimg.cc/ZqSSHxxX/IMG.png"),
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:15.0),
            child: Row(
              children: [
              Padding(
               padding: const EdgeInsets.only(left:15.0,right: 10.0,top: 12.0),
               child: Container(
                
                width: 85,
                height: 100,
                 child: TextFormField(controller: c,
                           cursorColor: Colors.white,
                           textAlignVertical: TextAlignVertical.center,
                            textAlign: TextAlign.center,
                            maxLength: 1,
                           keyboardType: TextInputType.number,
                           style: const TextStyle(color: Colors.white,fontSize: 30),
                           decoration: InputDecoration(
                            counterText: '',
                            contentPadding: const EdgeInsets.only(top: 44.0,bottom: 44.0),
                
                      
                           ),
                           ),
                           decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
        border: Border.all(
                
                color: Colors.white,
              ),),
               ),
             ),
              Padding(
               padding: const EdgeInsets.only(left:15.0,right: 10.0,top: 12.0),
               child: Container(
                
                width: 85,
                height: 100,
                 child: TextFormField(controller: c1,
                           cursorColor: Colors.white,
                           textAlignVertical: TextAlignVertical.center,
                            textAlign: TextAlign.center,
                            maxLength: 1,
                           keyboardType: TextInputType.number,
                           style: const TextStyle(color: Colors.white,fontSize: 30),
                           decoration: InputDecoration(
                            counterText: '',
                            contentPadding: const EdgeInsets.only(top: 44.0,bottom: 44.0),
                
                      
                           ),
                           ),
                           decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
        border: Border.all(
                
                color: Colors.white,
              ),),
               ),
             ),
              Padding(
               padding: const EdgeInsets.only(left:15.0,right: 10.0,top: 12.0),
               child: Container(
                
                width: 85,
                height: 100,
                 child: TextFormField(controller: c2,
                           cursorColor: Colors.white,
                           maxLength: 1,
                           keyboardType: TextInputType.number,
                           textAlignVertical: TextAlignVertical.center,
                            textAlign: TextAlign.center,
                           style: const TextStyle(color: Colors.white,fontSize: 30),
                           decoration: InputDecoration(
                            counterText: '',
                            contentPadding: const EdgeInsets.only(top: 44.0,bottom: 44.0),
                
                      
                           ),
                           ),
                           decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
        border: Border.all(
                
                color: Colors.white,
              ),),
               ),
             ),
              Padding(
               padding: const EdgeInsets.only(left:15.0,right: 10.0,top: 12.0),
               child: Container(
                
                width: 85,
                height: 100,
                 child: TextFormField(controller: c3,
                           cursorColor: Colors.white,
                           maxLength: 1,
                           keyboardType: TextInputType.number,
                           textAlignVertical: TextAlignVertical.center,
                            textAlign: TextAlign.center,
                           style: const TextStyle(color: Colors.white,fontSize: 30),
                           decoration: InputDecoration(
                           counterText: '',
                            contentPadding: const EdgeInsets.only(top: 44.0,bottom: 44.0),
                      
                           ),
                          
                           ),
                           decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
        border: Border.all(
                
                color: Colors.white,
              ),),
              
               ),
             ),
              ],
            ),
          )
        ]
          ),
    
      
      Container(
        height: 140,
        
      ),
        Center(
          child: Padding(
            padding: const EdgeInsets.only(bottom:10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  Text('00:20',style: TextStyle(color: Colors.white),),
                  Text(" resend confirmation code",style: TextStyle(color: Color(0xFF8F959E)),),
            ],),
          ),
        ),

 Padding(
                  padding: const EdgeInsets.only(top:8.0),
                  child: Container(
                  width: double.infinity,
                  height: 60,
                   child: ElevatedButton(           
                   onPressed: () {
                     Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>MyWidget7()));
                   },
                   child: 
                   Text('Confirm Code',style: TextStyle(color: Colors.white,fontSize: 20),),
                   style: TextButton.styleFrom(
                             
                        shape: RoundedRectangleBorder(
                        ),
                    
                    backgroundColor: Color(0xFF9775FA)),
                     
                   ),
                              ),
                ),]),      
                ),
                ),
                );
  }
}