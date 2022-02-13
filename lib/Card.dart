import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_3/product.dart';

class Card_Shop extends StatefulWidget {
  const Card_Shop({Key? key}) : super(key: key);

  @override
  _Card_ShopState createState() => _Card_ShopState();
}

class _Card_ShopState extends State<Card_Shop> {
  var ls = product.generate();
  double sum = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, top: 100),
              child: Row(
                children: [
                  Text(
                    'Monday, Auguest 2022',
                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    '(${ls.length})',
                    style: TextStyle(color: Colors.green, fontSize: 17),
                  )
                ],
              ),
            ),
            Container(
              width: 300,
              height: 210,
              color: Colors.white10,
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: ls.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              child: Image.asset(ls[index].imgae_logo,
                                  fit: BoxFit.cover),
                            ),
                            Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 60),
                                  child: Row(
                                    children: [
                                      Text(
                                        ls[index].name,
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        width: 80,
                                      ),
                                      Text(ls[index].price.toString() + "\$"),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 5),
                                Padding(
                                  padding: EdgeInsets.only(left: 60),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.add,
                                        color: Colors.grey,
                                        size: 17,
                                      ),
                                      SizedBox(width: 20),
                                      Text(
                                        '1',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Icon(
                                        Icons.remove,
                                        color: Colors.grey,
                                        size: 17,
                                      ),
                                      SizedBox(
                                        width: 70,
                                      ),
                                      Container(
                                        color: Colors.yellow,
                                        child: Icon(
                                          Icons.close,
                                          size: 17,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    );
                  }),
            ),
            Container(
              width: 300,
              height: 1,
              color: Colors.grey,
            ),
            Padding(
              padding: EdgeInsets.all(30),
              child: Row(
                children: [
                  Text(
                    'Total:',
                    style: TextStyle(fontSize: 20, color: Colors.grey),
                  ),
                  SizedBox(
                    width: 150,
                  ),
                  Text(
                    '33.0\$',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ],
              ),
            ),
            CupertinoButton(
             
              borderRadius: BorderRadius.all(Radius.circular(50)),
              color: Colors.orange,
              child: Container(
                height: 25,
                width: 150,
                child: Padding(
                  padding: EdgeInsets.only(left: 40),
                  child: Text('CheckOut',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.black),)),
              ), 
              onPressed: (){})
          ],
        ),
      ),
    );
  }
}
