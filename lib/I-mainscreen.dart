import 'package:flutter/material.dart';

class MyWidget8 extends StatefulWidget {
  const MyWidget8({super.key});

  @override
  State<MyWidget8> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget8> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Color(0xFF1B262C),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SafeArea(
                child: Container(
                  padding: EdgeInsets.all(10.0),
                  margin: EdgeInsets.fromLTRB(20, 20, 10, 20),
                  width: 45,
                  height: 45,
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    color: Color(0xFF222E34),
                    shape: OvalBorder(),
                  ),
                  child: Image.asset(
                    'Assets/screen8assets/menu.png',
                    height: 100,
                    width: 70,
                  ),
                ),
              ),


              // Cart Button
              Container(
                padding: const EdgeInsets.all(10.0),
                margin: const EdgeInsets.fromLTRB(20, 40, 10, 20),
                width: 45,
                height: 45,
                clipBehavior: Clip.antiAlias,
                decoration: const ShapeDecoration(
                  color: Color(0xFF222E34),
                  shape: OvalBorder(),
                ),
                child: Image.asset(
                  'Assets/screen8assets/Bag.png',
                  height: 100,
                  width: 70,
                ),
              ),
            ],
          ),
          const Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.fromLTRB(20, 40, 20, 10),
              child: Text(
                'Hello',
                style: TextStyle(
                  color: Color(0xFFF5F8FB),
                  fontSize: 28,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                  height: 0.04,
                  letterSpacing: -0.21,
                ),
              ),
            ),
          ),

          const Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
              child: Text(
                'Welcome to Laza.',
                style: TextStyle(
                  color: Color(0xFF8F959E),
                  fontSize: 15,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                  height: 0.07,
                ),
              ),
            ),
          ),

          const SizedBox(
            height: 10,
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color(0xFF222E34),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Container(
                            height: 30,
                            child: Image.asset('Assets/screen8assets/Search.png'),
                          ),
                        ),
                        const Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintStyle: TextStyle(
                                  color: Color(0xFF8F959E)
                              ),
                              border: InputBorder.none,
                              hintText: 'Search',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                //Voice Button
                Container(
                  height: 50,
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                  decoration: BoxDecoration(
                      color: Color(0xFF9775FA),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Image.asset('Assets/screen8assets/Voice.png'),
                ),
              ],
            ),
          ),

          //Choose Brand Text
          Row(
            children: [
              const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(20, 40, 10, 20),
                  child: Text(
                    'Choose Brand',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Color(0xFFF5F8FB),
                      fontSize: 18,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                      height: 0.06,
                    ),
                  ),
                ),
              ),

              Expanded(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(0, 15, 20, 10),
                    child: TextButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        foregroundColor: MaterialStateProperty.all(Color(0xFF8F959E)),
                      ),
                      child: Text('View All'),
                    ),
                  ),
                ),
              ),
            ],
          ),

          Container(
            height: 50,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Row(
                  children: [
                    const SizedBox(width: 18,),
                    Container(
                      width: 120,
                      height: 50,
                      decoration:BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xff222E34)),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Container(
                                width: 40,
                                height: 40,
                                decoration:BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color(0xff29363D)),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset('Assets/screen8assets/Adidas.png'),
                                ),
                              ),

                              const Padding(
                                padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
                                child: Text(
                                    "Adidas",
                                    style: TextStyle(
                                      color: Color(0xFFF5F8FB),
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                    )
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(width: 9,),
                    Container(
                      width: 98,
                      height: 50,
                      decoration:     BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xff222E34)),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Container(
                                width: 40,
                                height: 40,
                                decoration:BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color(0xff29363D)),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset('Assets/screen8assets/Vector.png'),
                                ),

                              ),

                              const Padding(
                                padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
                                child: Text(
                                    "Nike",
                                    style: TextStyle(
                                      color: Color(0xFFF5F8FB),
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                    )
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(width: 9,),
                    Container(
                      width: 91,
                      height: 50,
                      decoration:     BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xff222E34)),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Container(
                                width: 40,
                                height: 40,
                                decoration:BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color(0xff29363D)),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset('Assets/screen8assets/fila-9 1.png'),
                                ),
                              ),

                              const Padding(
                                padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
                                child: Text(
                                    "Fila",
                                    style: TextStyle(
                                      color: Color(0xFFF5F8FB),
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                    )
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(width: 9,),
                    Container(
                      width: 105,
                      height: 50,
                      decoration:     BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xff222E34)),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Row(
                            children: [
                              Container(
                                width: 40,
                                height: 40,
                                decoration:BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color(0xff29363D)),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset('Assets/screen8assets/puma-logo 1.png'),
                                ),
                              ),

                              const Padding(
                                padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
                                child: Text(
                                    "Puma",
                                    style: TextStyle(
                                      color: Color(0xFFF5F8FB),
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                    )
                                ),
                              )
                            ],
                          ),
                        ),
                      ),

                    )
                  ],
                ),
              ],
            ),
          ),

          Row(
            children: [
              const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(20, 35, 10, 20),
                  child: Text(
                    'New Arraival',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Color(0xFFF5F8FB),
                      fontSize: 18,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                      height: 0.06,
                    ),
                  ),
                ),
              ),

              Expanded(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(0, 10, 20, 10),
                    child:  TextButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        foregroundColor: MaterialStateProperty.all(Color(0xFF8F959E)),
                      ),
                      child: Text('View All'),
                    ),

                  ),
                ),
              ),
            ],
          ),

          Stack(
            alignment: Alignment.center,
            children: [

              Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15, 20, 5, 20),
                        child: Container(
                          height: 250,
                          width: 160,
                          decoration: BoxDecoration(
                              color: Color(0xFF1B262C),
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Align(
                            alignment: Alignment.topCenter,
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              height: 203,
                              width: 160,
                              child: Image.asset(
                                'Assets/screen8assets/Rectangle 569.png',
                                height: 100,
                                width: 70,
                              ),
                            ),
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.fromLTRB(5, 20, 0, 20),
                        child: Container(
                          height: 250,
                          width: 160,
                          decoration: BoxDecoration(
                              color: Color(0xFF1B262C),
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Align(
                            alignment: Alignment.topCenter,
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              height: 203,
                              width: 160,
                              child: Image.asset(
                                'Assets/screen8assets/Rectangle 569.png',
                                height: 100,
                                width: 70,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),


                ],
              )

            ],
          )

        ],

      ),
    );
  }
}