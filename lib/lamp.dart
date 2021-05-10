import 'package:flutter/material.dart';

class Lamp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
         children: [
           Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height*0.7,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('images/lamp.jpg'),
                ),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 50, horizontal: 16),
                  child: Icon(Icons.arrow_back_ios_sharp,
                  size: 30,),
                ),
                Padding(padding: EdgeInsets.symmetric(vertical: 50),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      bottomLeft: Radius.circular(25),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    child: Icon(Icons.add_shopping_cart_sharp),
                    ),),),
              ],
            ),
           ),
           Align(
             alignment: Alignment.bottomCenter,
             child: Container(
               height: 305,
               child: ListView(
                //  scrollDirection: Axis.horizontal,
                 children: [
                   Padding(padding: EdgeInsets.only(left: 35, right: 35, bottom: 30),
                   child: Material(
                     elevation: 10,
                     borderRadius: BorderRadius.circular(30),
                     color: Colors.white,
                     child: Padding(padding: EdgeInsets.symmetric(horizontal: 30),
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Row(
                           children:[
                             Text('Louis Poulsen',
                             style: TextStyle(
                               fontSize: 30,
                               fontWeight: FontWeight.bold),
                               ),
                              SizedBox(width: 15),
                            Hero(tag: 'img1', 
                            child: Image(
                              height: 90,
                              image: AssetImage('images/small.jpg'),
                              ),
                            ),
                           ]
                         ),
                         Text('Table Lamp',
                          style: TextStyle(
                            fontSize: 24),
                         ),
                         Padding(padding: EdgeInsets.symmetric(vertical: 10),
                         child: Text('Louis Poulsen is a classic Model of a lamp.\nWhich will fit in any elegant interior.'),
                         ),
                         Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Text('\$499',
                           style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25),
                           ),
                            // SizedBox(width: 100),
                            FlatButton(onPressed: () {}, 
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Color(0xfff39189),
                              ),
                              child: Padding(padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                                 child: Text('Buy',
                              style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white),
                              ),
                              ),
                            ),),
                         ],),
                         SizedBox(height: 20),
                       ],),
                     ),
                   ),
                   ),
               ],),
             ),
           ),
         ],
        ),),
    );
  }
}