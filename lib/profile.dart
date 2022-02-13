import 'package:flutter/material.dart';
import 'package:flutter_application_3/product.dart';

import 'Home.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int CurrentlyIndex = 0;
  var ls = product.generate();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Container(
              height: 420,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('Image/image2.jpg')
                ),
              ),
            ),
            CustomScrollView(
              anchor: 0.4,
              slivers: [
                SliverToBoxAdapter(
                  child: Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.all(40),
                        height: 400,
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [BoxShadow(blurRadius: 6.0)],
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Column(
                          children: [
                            Padding(padding: EdgeInsets.only(top: 80)),
                            Text(
                              'Set Your Name',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 30),
                            ),
                            Padding(padding: EdgeInsets.only(top: 10)),
                            Text(
                              'Set Your Email',
                              style: TextStyle(
                                  color: Colors.black54, fontSize: 20),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 250),
                              child: Icon(
                                Icons.mode_edit,
                                color: Colors.yellow,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: 700,
                              color: Colors.black,
                              height: 1,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 30),
                                  child: Text(
                                    'Mobile Number',
                                    style: TextStyle(
                                        color: Colors.black54, fontSize: 17),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 30),
                                  child: Text(
                                    'Your Phone Number',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  height: 1,
                                  color: Colors.black,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 30),
                                  child: Text(
                                    'Address',
                                    style: TextStyle(
                                        color: Colors.black54, fontSize: 17),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 30),
                                  child: Text(
                                    'Set Your Email Address',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        left: 130,
                        bottom: 380,
                        child: Column(
                          children: [
                            Container(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                                boxShadow: [BoxShadow(blurRadius: 3.0)],
                              ),

                              child: Icon(
                                Icons.person,
                                size: 95,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      
    );
  }
}
