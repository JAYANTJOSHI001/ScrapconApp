import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool _keepSignedIn = false;
  bool _acceptTerms = false;
  bool _acceptPrivacy = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Blue Background with Rounded Bottom Corners
          // Container(
          //   decoration: BoxDecoration(
          //     color: Color(0xFF6B93CA), // Blue background
          //     borderRadius: BorderRadius.only(
          //       bottomLeft: Radius.circular(30),
          //       bottomRight: Radius.circular(30),
          //     ),
          //   ),
          //   padding: EdgeInsets.only(top: 50, bottom: 50), // Add padding for spacing
          // ),
  
          Padding(
            padding: EdgeInsets.only(top: 100),
            child: Text(
              'Create your Account',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.black, 
              ),
              textAlign: TextAlign.center, 
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: ListView(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Email Address',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'First Name',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Last Name',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Mobile Number',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Checkbox(
                        value: _keepSignedIn,
                        onChanged: (bool? val) {
                          setState(() {
                            _keepSignedIn = val!;
                          });
                        },
                        activeColor: Colors.green,
                      ),
                      Expanded(child: Text('Keep me signed in')),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: _acceptTerms,
                        onChanged: (bool? val) {
                          setState(() {
                            _acceptTerms = val!;
                          });
                        },
                        activeColor: Colors.green,
                      ),
                      Expanded(child: Text('I accept all Terms & Conditions')),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: _acceptPrivacy,
                        onChanged: (bool? val) {
                          setState(() {
                            _acceptPrivacy = val!;
                          });
                        },
                        activeColor: Colors.green,
                      ),
                      Expanded(child: Text('I accept Privacy Policy')),
                    ],
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      // Add your account creation logic here
                    },
                    child: Text('Create Account'),
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 15),
                      textStyle: TextStyle(fontSize: 18),
                      backgroundColor: Color(0xFF17255A),
                      foregroundColor: Colors.white,
                    ),
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}