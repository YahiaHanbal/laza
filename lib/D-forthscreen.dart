
import 'package:flutter/material.dart';
import 'I-mainscreen.dart';
import 'C-thirdscreen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

class MyWidget3 extends StatefulWidget {
  const MyWidget3({super.key});

  @override
  State<MyWidget3> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget3> {
   var c=TextEditingController();
  var c2=TextEditingController();
  var c3=TextEditingController();
  int text_length1=0;
  int text_length2=0;
  int text_length3=0;
  bool isSwitched=false;
  Future<void> create_user(String username,String password) async {
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
     await sharedPreferences.setString("username", username);
     await sharedPreferences.setString("password", password);
  }
Future<void> save_user() async {
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
     await sharedPreferences.setBool("remember2", isSwitched);
  }
  
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
                            builder: (context) =>MyWidget2()));
                          
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
                      child: Text("Sign Up",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
                    ),
      Container(width: double.infinity,height: 150,),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left:18.0),
            child: Text("Username",style: TextStyle(color: Color(0xFF8F959E)),),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0,left: 18.0,right: 18.0),
            child: TextFormField(controller: c,
            style: const TextStyle(color: Colors.white,fontSize: 18),
            decoration: InputDecoration(
              suffixIcon: Icon(Icons.done,color: c.text.length>8?Color(0xFF34C358):Color(0xFF1B262C),),
             focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white,
                  ),),
                  
            ),
            onChanged: (value) {
              setState(() {
      text_length1 = c.text.length;
    });
            },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:14.0),
            child: Text("Password",style: TextStyle(color: Color(0xFF8F959E)),),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0,left: 18.0,right: 18.0),
            child: TextFormField(controller: c2,
            style: const TextStyle(color: Colors.white,fontSize: 18),
            
            decoration: InputDecoration(
              suffixText: "strong",
              suffixStyle: TextStyle(color: c2.text.length>8?Color(0xFF34C358):Color(0xFF1B262C)),
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
            child: Text("Email Address",style: TextStyle(color: Color(0xFF8F959E)),),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0,left: 18.0,right: 18.0),
            child: TextFormField(controller: c3,
            style: const TextStyle(color: Colors.white,fontSize: 18),
            
            decoration: InputDecoration(
              suffixIcon: Icon(Icons.done,color: c3.text.length>8?Color(0xFF34C358):Color(0xFF1B262C),),
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
    Row(
      children: [
        Padding(
                padding: const EdgeInsets.only(left:14.0,top: 5.0),
                child: Text("Remember me",style: TextStyle(color:Colors.white)),),
      Container(width: 300,),
      Switch(
            value: isSwitched,
            onChanged: (value) {
              setState(() {
                isSwitched = value;
              });
            },
        activeColor: Colors.green,
          ),

      ],
    ),
        ],
      ),
      Container(
        height: 105,
      ),
 Padding(
                  padding: const EdgeInsets.only(top:8.0),
                  child: Container(
                  width: double.infinity,
                  height: 60,
                   child: ElevatedButton(           
                   onPressed: () {
                     create_user(c.text.toString(),c2.text.toString());
                     save_user();
                     Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>MyWidget8()));
                   },
                   child: 
                   Text('Sign Up',style: TextStyle(color: Colors.white,fontSize: 20),),
                   style: TextButton.styleFrom(
                             
                        shape: RoundedRectangleBorder(
                        ),
                    
                    backgroundColor: Color(0xFF9775FA)),
                     
                   ),
                              ),
                ),      ]),),
      ),);
  }
}