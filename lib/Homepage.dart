import 'package:flutter/material.dart';
import 'package:jio_saavn/loginpage.dart';
import 'package:jio_saavn/mainscreen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final List<Widget> _children = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 40),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    'Music',
                    style: TextStyle(
                      shadows: [
                        Shadow(color: Colors.black, offset: Offset(0, -5))
                      ],
                      color: Colors.transparent,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                      decorationThickness: 2,
                      decorationColor: Colors.teal[300],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Podcasts',
                    style: TextStyle(
                        color: Colors.grey[500],
                        fontSize: 23,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    width: 110,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text("Go Pro"),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.teal),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(
                            color: Colors.teal,
                            width: 2.0,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Image(image: AssetImage('assets/images/hp.jpeg')),
              SizedBox(
                height: 5,
              ),
              Text(
                'Hi There',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 20),
              ),
              Text(
                'FRESH HITS',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[500],
                    fontSize: 15),
              ),
              Row(
                children: [
                  Container(
                    height: 170,
                    child: Card(
                      child: Column(
                        children: [
                          Image(
                            image: AssetImage('assets/images/q.jpeg'),
                            height: 120,
                            width: 120,
                          ),
                          Text(
                            'Now Trending -',
                            style: TextStyle(
                                color: Colors.grey[900],
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Hollywood',
                            style: TextStyle(
                                color: Colors.grey[900],
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 170,
                    child: Card(
                      child: Column(
                        children: [
                          Image(
                            image: AssetImage('assets/images/q1.jpeg'),
                            height: 120,
                            width: 120,
                          ),
                          Text(
                            'Lofy',
                            style: TextStyle(
                                color: Colors.grey[900],
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Bollywood',
                            style: TextStyle(
                                color: Colors.grey[900],
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 170,
                    child: Card(
                      child: Column(
                        children: [
                          Image(
                            image: AssetImage('assets/images/q2.jpeg'),
                            height: 120,
                            width: 120,
                          ),
                          Text(
                            'Depression and',
                            style: TextStyle(
                                color: Colors.grey[900],
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Anxiety',
                            style: TextStyle(
                                color: Colors.grey[900],
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Vaishali Samant',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[700]),
              ),
              Row(
                children: [
                  Container(
                    height: 170,
                    child: Card(
                      child: Column(
                        children: [
                          Image(
                            image: AssetImage('assets/images/v1.jpeg'),
                            height: 120,
                            width: 120,
                          ),
                          Text(
                            'Vaishali Samant',
                            style: TextStyle(
                                color: Colors.grey[900],
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Hits',
                            style: TextStyle(
                                color: Colors.grey[900],
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 170,
                    child: Card(
                      child: Column(
                        children: [
                          Image(
                            image: AssetImage('assets/images/v2.jpeg'),
                            height: 120,
                            width: 120,
                          ),
                          Text(
                            'Aika',
                            style: TextStyle(
                                color: Colors.grey[900],
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Dajiba',
                            style: TextStyle(
                                color: Colors.grey[900],
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 170,
                    child: Card(
                      child: Column(
                        children: [
                          Image(
                            image: AssetImage('assets/images/v3.jpeg'),
                            height: 120,
                            width: 120,
                          ),
                          Text(
                            'Mera',
                            style: TextStyle(
                                color: Colors.grey[900],
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Dadla',
                            style: TextStyle(
                                color: Colors.grey[900],
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Text(
                'Arijit Singh',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[700]),
              ),
              SizedBox(
                height: 180,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                      height: 170,
                      child: Card(
                        child: Column(
                          children: [
                            Image(
                              image: AssetImage('assets/images/arijit1.jpeg'),
                              height: 120,
                              width: 120,
                            ),
                            Text(
                              'Arijit',
                              style: TextStyle(
                                  color: Colors.grey[900],
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Hits',
                              style: TextStyle(
                                  color: Colors.grey[900],
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 170,
                      child: Card(
                        child: Column(
                          children: [
                            Image(
                              image: AssetImage('assets/images/arijit2.jpeg'),
                              height: 120,
                              width: 120,
                            ),
                            Text(
                              'Binte dil',
                              style: TextStyle(
                                  color: Colors.grey[900],
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Remix',
                              style: TextStyle(
                                  color: Colors.grey[900],
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 170,
                      child: Card(
                        child: Column(
                          children: [
                            Image(
                              image: AssetImage('assets/images/arijit4.jpeg'),
                              height: 120,
                              width: 120,
                            ),
                            Text(
                              'Best of',
                              style: TextStyle(
                                  color: Colors.grey[900],
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Arijit',
                              style: TextStyle(
                                  color: Colors.grey[900],
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 170,
                      child: Card(
                        child: Column(
                          children: [
                            Image(
                              image: AssetImage('assets/images/arijit3.jpeg'),
                              height: 120,
                              width: 120,
                            ),
                            Text(
                              'Channa',
                              style: TextStyle(
                                  color: Colors.grey[900],
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Mereya',
                              style: TextStyle(
                                  color: Colors.grey[900],
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: (value) {
          _currentIndex = value;
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => MainScreen()));
        },
        currentIndex: _currentIndex,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_call),
            label: 'Videos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Library',
          ),
        ],
      ),
    );
  }
}
