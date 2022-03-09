import 'package:flutter/material.dart';
import 'package:jio_saavn/mainscreen.dart';

class Splash extends StatefulWidget {
  const Splash({key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(Duration(milliseconds: 2500), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => MainScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            child: Image(image: AssetImage('assets/images/splas.jpeg'))),
      ),
    );
  }
}
