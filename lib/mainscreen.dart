import 'package:flutter/material.dart';
import 'package:jio_saavn/loginpage.dart';
import 'package:roundcheckbox/roundcheckbox.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Container(
        decoration: BoxDecoration(color: Colors.blueAccent[50]),
        padding: EdgeInsets.all(40),
        child: Center(
          child: Column(
            children: [
              Image(
                image: AssetImage('assets/images/logo.jpeg'),
                height: 50,
              ),
              SizedBox(
                height: 60,
              ),
              Text('Hello.',
                  style: TextStyle(
                      fontSize: 70,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey[500])),
              SizedBox(
                height: 60,
              ),
              Text('Choose Your Display Language',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'English',
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 225,
                          ),
                          RoundCheckBox(
                            onTap: (selected) {},
                            size: 22,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          Text(
                            'हिन्दी  Hindi',
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 199,
                          ),
                          RoundCheckBox(
                            onTap: (selected) {},
                            size: 22,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          Text(
                            'বাংলা  Bengali',
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 175,
                          ),
                          RoundCheckBox(
                            onTap: (selected) {},
                            size: 22,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          Text(
                            'मराठी  Marathi',
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 175,
                          ),
                          RoundCheckBox(
                            onTap: (selected) {},
                            size: 22,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          Text(
                            'ગુજરાતી  Gujarati',
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 156,
                          ),
                          RoundCheckBox(
                            onTap: (selected) {},
                            size: 22,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          Text(
                            'ಕನ್ನಡ  Kannada',
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 166,
                          ),
                          RoundCheckBox(
                            onTap: (selected) {},
                            size: 22,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          Text(
                            'മലയാളം  Malayalam',
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 110,
                          ),
                          RoundCheckBox(
                            onTap: (selected) {},
                            size: 22,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              ButtonTheme(
                minWidth: 200.0,
                height: 50.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                child: RaisedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Login()),
                    );
                  },
                  child: Text(
                    "Next",
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                  color: Colors.teal[400],
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
