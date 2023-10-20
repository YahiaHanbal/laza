import 'dart:convert';
import 'package:flutter/material.dart';
import 'mainscreen.dart';
import 'sixthscreen.dart';
import 'C-thirdscreen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import 'package:fluttertoast/fluttertoast.dart';
class MyWidget4 extends StatefulWidget {
  const MyWidget4({super.key});

  @override
  State<MyWidget4> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget4> {
   var c=TextEditingController();
  var c2=TextEditingController();
  var c3=TextEditingController();
  int text_length1=0;
  int text_length2=0;
  int text_length3=0;
  bool isSwitched=false;
  Future<void> save_user() async {
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
     await sharedPreferences.setBool("remember1", isSwitched);
  }
  void checklogin(String username1,String password1) async {
  int i=0;
    var url = 'https://fakestoreapi.com/users';
    var response = await http.get(Uri.parse(url));
     final responsebody=jsonDecode(response.body) ;
     for (i=0;i<10;i++){
      String username=responsebody[i]["username"];
      String password=responsebody[i]["password"];
      if(username1==username && password1==password){
         Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>MyWidget8()));
                            return;
      }
      
     }
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
      var username=sharedPreferences.getString("username");
      var password=sharedPreferences.getString("password");
      if(username1==username && password1==password){
         Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>MyWidget8()));
      return;}
      Fluttertoast.showToast(
                     msg: "wrong email or password",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.BOTTOM, // Also possible "TOP" and "CENTER"
                    );
      
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
                      child: Text("Welcome",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
                    ),
        Text("please enter your data to continue",style: TextStyle(color: Color(0xFF8F959E)),),
      Container(width: double.infinity,height: 125,),
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
    Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.only(right:18.0,top: 15.0),
          child: InkWell(
            onTap: () {
               Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>MyWidget5()));
            },
            child: Text("Forgot password ?",style: TextStyle(color: Color(0xFFE96459)),)),
        )
      ],
    ) ,     
    Padding(
      padding: const EdgeInsets.only(top:12.0),
      child: Row(
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
    ),
        ],
      ),
      Container(
        height: 100,
      ),
        Text("By connecting your account confirm that you agree",style: TextStyle(color: Color(0xFF8F959E)),),
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
        Text("with our ",style: TextStyle(color: Color(0xFF8F959E)),),
        Text("Term and Conditions",style: TextStyle(color: Colors.white),),
          ],),
        ),

 Padding(
                  padding: const EdgeInsets.only(top:8.0),
                  child: Container(
                  width: double.infinity,
                  height: 60,
                   child: ElevatedButton(           
                   onPressed: () {
                     checklogin(c.text.toString(), c2.text.toString());
                     save_user();
                   },
                   child: 
                   Text('Login',style: TextStyle(color: Colors.white,fontSize: 20),),
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