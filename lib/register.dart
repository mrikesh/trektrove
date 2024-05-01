import 'package:flutter/material.dart';
import 'package:trektrove/components/my_textfield.dart';
import 'package:trektrove/login.dart';

class Register extends StatelessWidget {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  Register({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Register Account',
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                MyTextField(
                    controller: nameController,
                    hintText: 'Full Name',
                    obsecureText: false),
                SizedBox(height: 10),
                MyTextField(
                    controller: emailController,
                    hintText: 'Email',
                    obsecureText: false),
                SizedBox(height: 10),
                MyTextField(
                    controller: passwordController,
                    hintText: 'Password',
                    obsecureText: true),
                SizedBox(height: 10),
                MyTextField(
                    controller: passwordController,
                    hintText: 'Confirm Password',
                    obsecureText: true),
                SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 56,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Login()),
                            );
                          },
                          child: Text(
                            'Register',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
