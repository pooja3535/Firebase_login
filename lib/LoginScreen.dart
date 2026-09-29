import 'dart:html';

import 'package:flutter/material.dart';
import 'signUp.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 20.0,
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                child: Icon(Icons.lock),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Welcome Back!',
                style: TextStyle(
                    fontSize: 25.0,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Login to continue',
                style: TextStyle(
                    fontSize: 14.0,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30,
              ),
              TextFormField(
                  decoration: InputDecoration(border: OutlineInputBorder())),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: InputDecoration(border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: () {},
                  child: Text('Forgot Password ?',
                      style: TextStyle(
                        color: Colors.blue,
                      )),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue, fixedSize: Size(350, 50)),
                onPressed: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomeLogin())),
                child: Text('Log In',
                    style: TextStyle(color: Colors.white, fontSize: 25)),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Divider(
                      thickness: 1,
                      color: Colors.blueGrey,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      'or continue with',
                      style: TextStyle(color: Colors.black, fontSize: 14.0),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      thickness: 1,
                      color: Colors.blueGrey,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  OutlinedButton(onPressed: () {}, child: Text('Google')),
                  SizedBox(
                    width: 10,
                  ),
                  OutlinedButton(onPressed: () {}, child: Text('Apple')),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account ?",
                    style: TextStyle(color: Colors.black, fontSize: 14),
                  ),
                  Text(
                    " Sign Up",
                    style: TextStyle(color: Colors.blue, fontSize: 14),
                  ),
                ],
              ),
            ],
          )),
        ),
      ),
    );
  }
}
