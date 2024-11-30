// ignore: unused_import
import 'package:flutter/material.dart';
// ignore: unnecessary_import
import 'package:flutter/services.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});
  Widget singleProducts() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      height: 280,
      width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color.fromARGB(255, 255, 255, 255),
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Expanded(
          flex: 2,
          child: Image.network(
              'https://mpng.hippopng.com/lnd/20240811/kso/spinach-leafy-greens-vegetable.jpg'),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'green leafy',
                  style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontWeight: FontWeight.bold),
                ),
                const Text('50\$/50gm'),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.only(bottom: 1, left: 3),
                        height: 20,
                        width: 50,
                        decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Row(
                          children: [
                            Expanded(
                                child: Text(
                              '50gm',
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            )),
                            Icon(
                              Icons.arrow_drop_down,
                              size: 15,
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: Container(
                        height: 20,
                        width: 50,
                        decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.remove,
                              size: 15,
                            ),
                            Text('1'),
                            Icon(
                              Icons.add,
                              size: 15,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(215, 233, 227, 227),
        drawer: const Drawer(),
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.black87),
          title: const Text(
            "Home",
            style: TextStyle(color: Color.fromARGB(233, 8, 1, 1), fontSize: 20),
          ),
          actions: const [
            CircleAvatar(
              radius: 20,
              backgroundColor: Color.fromARGB(236, 196, 196, 15),
              child: Icon(
                Icons.search,
                size: 25,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: CircleAvatar(
                radius: 20,
                backgroundColor: Color.fromARGB(236, 196, 196, 15),
                child: Icon(
                  Icons.shop,
                  size: 25,
                  color: Colors.black54,
                ),
              ),
            )
          ],
          // ignore: prefer_const_constructors
          backgroundColor: const Color.fromARGB(224, 234, 196, 7),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
          child: ListView(
            children: [
              Container(
                height: 150,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/allvegi.jpeg')),
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.red,
                ),
                child: Row(
                  children: [
                    Expanded(
                      // ignore: avoid_unnecessary_containers
                      child: Container(
                        //color: Colors.red,
                        child: Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 150, bottom: 10),
                              child: Container(
                                height: 40,
                                width: 100,
                                decoration: const BoxDecoration(
                                    color: Color.fromARGB(255, 169, 175, 11),
                                    borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(30),
                                      bottomLeft: Radius.circular(30),
                                    )),
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 8),
                                  child: Text(
                                    'vegi',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                      shadows: [
                                        BoxShadow(
                                            color: Colors.green,
                                            blurRadius: 3,
                                            offset: Offset(3, 3))
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const Text(
                              '30% OFF',
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Color.fromARGB(249, 231, 247, 178),
                                  fontWeight: FontWeight.bold),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Text(
                                'Good Food Good Mood',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Color.fromARGB(240, 215, 233, 172),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Harbes session'),
                    Text(
                      'view all',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    singleProducts(),
                    singleProducts(),
                    singleProducts(),
                    singleProducts(),
                    singleProducts(),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Fresh Fruits'),
                    Text(
                      'view all',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    singleProducts(),
                    singleProducts(),
                    singleProducts(),
                    singleProducts(),
                    singleProducts(),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
