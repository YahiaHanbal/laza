import 'package:flutter/material.dart';
import 'fifthscreen.dart';
import 'seventhscreen.dart';

class MyWidget5 extends StatefulWidget {
  const MyWidget5({super.key});

  @override
  State<MyWidget5> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget5> {
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
                            builder: (context) =>MyWidget4()));
                          
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
                      child: Text("Forgot Password",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
                    ),
      Container(width: double.infinity,height: 250,
      child: new Image.network(
    "https://i.postimg.cc/ZqSSHxxX/IMG.png"),
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Padding(
            padding: const EdgeInsets.only(left:14.0,top: 25.0),
            child: Text("Email Address",style: TextStyle(color: Color(0xFF8F959E)),),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0,left: 18.0,right: 18.0),
            child: TextFormField(controller: c3,
            style: const TextStyle(color: Colors.white,fontSize: 18),
            
            decoration: InputDecoration(
             focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white,
                  ),),
                  
            ),
            ),
          ),
        ]
          ),
    
      
      Container(
        height: 135,
        
      ),
        Text("Please write your email to receive a",style: TextStyle(color: Color(0xFF8F959E)),),
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
        Text("confirmation code to set a new password. ",style: TextStyle(color: Color(0xFF8F959E)),),
          ],),
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
                            builder: (context) =>MyWidget6()));
                   },
                   child: 
                   Text('Confirm Mail',style: TextStyle(color: Colors.white,fontSize: 20),),
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