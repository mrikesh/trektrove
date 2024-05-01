import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:trektrove/components/my_textfield.dart";
import "package:trektrove/homepage.dart";
import "package:trektrove/register.dart";

class Login extends StatelessWidget {
  Login({super.key});

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                'assets/images/hike2.jpg'), // Replace with your image path
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Welcome to TrekTrove",
                style: TextStyle(
                  fontSize: 50,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              MyTextField(
                controller: emailController,
                hintText: 'Email',
                obsecureText: false,
              ),
              SizedBox(height: 10),
              MyTextField(
                  controller: passwordController,
                  hintText: 'Password',
                  obsecureText: true),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Forget Password ?',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),
              // SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 56,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => HomePage()),
                          );
                        },
                        child: Text(
                          'Login',
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account ?",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Register()),
                        );
                      },
                      child: Text('Register'))
                ],
              )
            ],
          ),
        ),
      ),
    ));
  }
}
