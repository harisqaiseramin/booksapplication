import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool _checkbox = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: NeumorphicBackground(
        child: Container(
          padding: EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Virtual Try On',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  'Login In',
                  style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      color: Colors.red),
                ),
              ),
              Neumorphic(
                padding: EdgeInsets.symmetric(
                  horizontal: 20.0,
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Email',
                  ),
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
              SizedBox(
                height: 12.0,
              ),
              Neumorphic(
                padding: EdgeInsets.symmetric(
                  horizontal: 20.0,
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Password',
                  ),
                  obscureText: true,
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Checkbox(
                    value: _checkbox,
                    onChanged: (value) {
                      setState(() {
                        _checkbox = !_checkbox;
                      });
                    },
                  ),
                  Text(
                    'Remember me',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 90,
                  ),
                  Text(
                    'Forget Password',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              NeumorphicButton(
                  onPressed: () {},
                  margin: EdgeInsets.only(left: 12.0),
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  )),
              Padding(
                padding: const EdgeInsets.all(22.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    NeumorphicButton(
                        onPressed: () {},
                        margin: EdgeInsets.only(left: 12.0),
                        child: Image.asset(
                          'assets/img1.png',
                          width: 40,
                        )),
                    NeumorphicButton(
                        onPressed: () {},
                        margin: EdgeInsets.only(left: 12.0),
                        child: Image.asset(
                          'assets/img2.jpg',
                          width: 40,
                        )),
                    NeumorphicButton(
                        onPressed: () {},
                        margin: EdgeInsets.only(left: 12.0),
                        child: Image.asset(
                          'assets/img3.png',
                          width: 40,
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Dont have an account?',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              NeumorphicButton(
                  onPressed: () {},
                  margin: EdgeInsets.only(left: 12.0),
                  child: Text(
                    'Sign Up Now',
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  )),
            ],
          ),
        ),
      ),
    ));
  }
}
