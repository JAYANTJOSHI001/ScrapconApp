import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'signup_screen.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/splash_image.png', // Replace with your image asset
            height: 300,
          ),
          SizedBox(height: 30),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginScreen()),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue[900], // Replaces `primary`
              foregroundColor: Colors.white, // Text color
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 100),
              textStyle: TextStyle(fontSize: 18),
            ),
            child: Text('Welcome! Sign In'),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SignupScreen()),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white, // Replaces `primary`
              foregroundColor: Colors.blue[900], // Text color
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 100),
              textStyle: TextStyle(fontSize: 18),
            ),
            child: Text('Create Account'),
          ),
        ],
      ),
    );
  }
}