import 'package:flutter/material.dart';
import 'package:errorx/aboutuspage.dart';
import 'package:errorx/loginpage.dart';
import 'package:errorx/signuppage.dart';
import 'package:errorx/profilepage.dart';

class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon(),
            SignUpButon(context),
            LoginButton(context),

          ],
        ),

      ),
      backgroundColor: Colors.orangeAccent,
    );
  }


  Container icon() {
    return Container(
      width: 150,
      height: 150,
      child: CircleAvatar(
        backgroundImage: AssetImage('assets/foodbank.png'),
      ),
    );
  }

  Container LoginButton(BuildContext context) {
    return Container(
      child: ElevatedButton(
        child: Text('Login Page'),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const loginPage()),
          );
        },
      ),

    );
  }

  Container SignUpButon(BuildContext context) {
    return Container(
      child: ElevatedButton(
        child: Text('Signup Page'),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>  signuppage()),
          );
        },
      ),
    );

  }
}

