import 'package:flutter/material.dart';
import 'G-seventhscreen.dart';

class MyWidget7 extends StatefulWidget {
  const MyWidget7({super.key});

  @override
  State<MyWidget7> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget7> {
  var c2=TextEditingController();
  var c3=TextEditingController();
  int text_length2=0;
  int text_length3=0;
  bool isSwitched=false;
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
                            builder: (context) =>MyWidget6()));
                          
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
                      child: Text("New Password",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
                    ),
      Container(width: double.infinity,height: 160,),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left:14.0),
            child: Text("Password",style: TextStyle(color: Color(0xFF8F959E)),),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0,left: 18.0,right: 18.0),
            child: TextFormField(controller: c2,
            style: const TextStyle(color: Colors.white,fontSize: 18),
            decoration: InputDecoration(
             focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white,
                  ),),
                  
            ),
            onChanged: (value) {
              setState(() {
      text_length2 = c2.text.length;
    });
            },
            ),
          ),
       Padding(
            padding: const EdgeInsets.only(left:14.0),
            child: Text("Confirm Password",style: TextStyle(color: Color(0xFF8F959E)),),
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
            onChanged: (value) {
              setState(() {
      text_length3 = c3.text.length;
    });
            },
            ),
          ),
       
    
        ],
      ),
      Container(
        height: 182,
      ),
        Padding(
          padding: const EdgeInsets.only(bottom:8.0),
          child: Text("Please write your new password.",style: TextStyle(color: Color(0xFF8F959E)),),
        ),
        

 Padding(
                  padding: const EdgeInsets.only(top:8.0),
                  child: Container(
                  width: double.infinity,
                  height: 60,
                   child: ElevatedButton(           
                   onPressed: () {
                     
                   },
                   child: 
                   Text('Confirm Password',style: TextStyle(color: Colors.white,fontSize: 20),),
                   style: TextButton.styleFrom(
                             
                        shape: RoundedRectangleBorder(
                        ),
                    
                    backgroundColor: Color(0xFF9775FA)),
                     
                   ),
                              ),
                ),      ]),),
      ),);
}}