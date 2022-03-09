import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:jio_saavn/Homepage.dart';

class Login extends StatelessWidget {
  const Login({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'Create an Account',
              style: TextStyle(color: Colors.black),
            ),
          ),
          backgroundColor: Colors.white,
          leading: Icon(
            Icons.settings,
            color: Colors.black,
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(15),
            child: Center(
              child: Column(
                children: [
                  Image(image: AssetImage('assets/images/model.jpeg')),
                  Text(
                    'Sign up or log in to use this',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                  Text(
                    'feature and more.',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                  MyCustomForm(),
                  GestureDetector(
                    onTap: () {
                      print('Box Clicked');
                    },
                    child: TextButton(
                      style: TextButton.styleFrom(
                        textStyle: const TextStyle(fontSize: 20),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text(
                        'Skip',
                        style: TextStyle(color: Colors.black54),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class MyCustomForm extends StatefulWidget {
  const MyCustomForm({key}) : super(key: key);

  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

// Create a corresponding State class.
// This class holds data related to the form.
class MyCustomFormState extends State<MyCustomForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();
  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            // The validator receives the text that the user has entered.
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
            decoration: InputDecoration(hintText: 'Email'),
            controller: emailcontroller,
          ),
          TextFormField(
            // The validator receives the text that the user has entered.
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
            decoration: InputDecoration(hintText: 'Password'),
            controller: passwordcontroller, obscureText: true,
          ),
          Row(
            children: [
              SizedBox(
                width: 50,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: ElevatedButton(
                  onPressed: () async {
                    // Validate returns true if the form is valid, or false otherwise.
                    if (_formKey.currentState!.validate()) {
                      // If the form is valid, display a snackbar. In the real world,
                      // you'd often call a server or save the information in a database.
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Processing Data')),
                      );
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomePage()),
                      );
                    }
                    await FirebaseAuth.instance.signInWithEmailAndPassword(
                        email: emailcontroller.text,
                        password: passwordcontroller.text);
                  },
                  child: const Text('Login'),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.teal[400]),
                      textStyle:
                          MaterialStateProperty.all(TextStyle(fontSize: 20))),
                ),
              ),
              SizedBox(
                width: 50,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: ElevatedButton(
                  onPressed: () async {
                    // Validate returns true if the form is valid, or false otherwise.
                    if (_formKey.currentState!.validate()) {
                      // If the form is valid, display a snackbar. In the real world,
                      // you'd often call a server or save the information in a database.
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Processing Data')),
                      );
                    }
                    await FirebaseAuth.instance.createUserWithEmailAndPassword(
                        email: emailcontroller.text,
                        password: passwordcontroller.text);
                    setState(() {});
                  },
                  child: const Text('SignUp'),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.teal[400]),
                      textStyle:
                          MaterialStateProperty.all(TextStyle(fontSize: 20))),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
