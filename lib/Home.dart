import 'package:flutter/material.dart';
import 'package:flutter_application_3/Card.dart';
import 'package:flutter_application_3/profile.dart';
import 'package:flutter_application_3/product.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int CurrentlyIndex = 0;
  var ls = product.generate();
  final screan = [Home(), Card_Shop(), Profile()];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomScrollView(
        slivers: [
          AppBar(),
          body1(),
          SliverToBoxAdapter(
            child: Container(
              padding: EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Icon(
                    Icons.favorite,
                    color: Colors.yellow,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Today' + "'s Deals",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          Build_pupolar_item(),
          SliverToBoxAdapter(
            child: Container(
              padding: EdgeInsets.only(left: 20, top: 8, bottom: 10),
              child: Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Pupolar Item',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          Build_body1(),
        ],
      ),
    );
  }

  SliverToBoxAdapter Build_pupolar_item() {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 220,
        width: 400,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: ls.length,
            itemBuilder: (context, index) {
              return Card(
                shadowColor: Colors.grey,
                margin: EdgeInsets.only(left: 20, top: 10),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        ls[index].imag,
                        fit: BoxFit.cover,
                        height: 150,
                        width: 150,
                      ),
                      Text(
                        ls[index].name,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      Row(
                        children: [
                          for (var i = 0; i < 5; i++)
                            Ink(
                              child: Icon(
                                Icons.star_outlined,
                                size: 15,
                                color: Colors.yellow,
                              ),
                            ),
                          Padding(padding: EdgeInsets.only(left: 20)),
                          Text('3.0'),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            '\$${ls[index].price}',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                          InkWell(
                            child: Container(
                              margin: EdgeInsets.only(left: 90),
                              height: 22,
                              width: 23,
                              color: Colors.yellow,
                              child: Icon(Icons.add),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }

  SliverToBoxAdapter Build_body1() {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 220,
        width: 400,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: ls.length,
            itemBuilder: (context, index) {
              return Card(
                margin: EdgeInsets.only(left: 20, top: 10),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        ls[index].imag,
                        fit: BoxFit.cover,
                        height: 150,
                        width: 150,
                      ),
                      Text(
                        ls[index].name,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      Row(
                        children: [
                          for (var i = 0; i < 5; i++)
                            Ink(
                              child: Icon(
                                Icons.star_outlined,
                                size: 15,
                                color: Colors.yellow,
                              ),
                            ),
                          Padding(padding: EdgeInsets.only(left: 20)),
                          Text('3.0'),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            '\$${ls[index].price}',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                          InkWell(
                            child: Container(
                              margin: EdgeInsets.only(left: 90),
                              height: 22,
                              width: 23,
                              color: Colors.yellow,
                              child: Icon(Icons.add),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }

  SliverToBoxAdapter body1() {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 110,
        width: 110,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: ls.length,
            itemBuilder: (context, index) {
              return Card(
                borderOnForeground: true,
                shadowColor: Colors.black,
                margin: EdgeInsets.only(left: 20, top: 20, bottom: 20),
                child: Container(
                  child: Row(
                    children: [
                      Image.asset(
                        ls[index].imgae_logo,
                        fit: BoxFit.cover,
                        height: 50,
                      ),
                      Padding(padding: EdgeInsets.only(left: 15)),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(padding: EdgeInsets.only(top: 12)),
                          Text(
                            ls[index].name,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          Text(
                            ls[index].qty.toString() + ' Kinds',
                            style:
                                TextStyle(color: Colors.black54, fontSize: 15),
                          ),
                        ],
                      ),
                      Padding(padding: EdgeInsets.only(right: 15)),
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }

  SliverAppBar AppBar() {
    return SliverAppBar(
      leading: InkWell(
        onTap: () {},
        child: Image.network(
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQWmQdKQtvci2D5YfyaPt0xWiDDr6pFMMcpw&usqp=CAU',
        ),
      ),
      pinned: true,
      title: Text(
        'FoodDaddy',
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
      centerTitle: true,
      backgroundColor: Colors.white,
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.shopping_cart_rounded),
          color: Colors.yellow,
          iconSize: 30,
        ),
      ],
    );
  }
}
