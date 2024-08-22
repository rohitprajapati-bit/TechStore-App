import "package:flutter/material.dart";
import 'package:secondprojec/utility/route.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool isVisible = false;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Image.asset(
                "assets/images/hey.png",
                fit: BoxFit.cover,
              ),
              const SizedBox(
                height: 15.0,
              ),
              Text(
                "Welcome $name",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 20.0, horizontal: 30.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter Username",
                        labelText: "Username",
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "username cannot be empty";
                        }
                        return null;
                      },
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                    ),
                    TextFormField(
                      obscureText: isVisible ? false : true,
                      decoration: InputDecoration(
                          hintText: "Enter Password",
                          labelText: "Password",
                          suffixIcon: IconButton(
                            icon: Icon(isVisible
                                ? Icons.visibility
                                : Icons.visibility_off),
                            onPressed: () {
                              setState(() {
                                isVisible = !isVisible;
                                // if (isVisible) {
                                //   isVisible = false;
                                // } else {
                                //   isVisible = true;
                                // }
                              });
                            },
                          )),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Password cannot be empty";
                        } else if (value.length < 6) {
                          return "Password lenght should be atleast 6";
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 35.0,
                    ),
                    ElevatedButton(
                      child: Text(
                        "Login",
                        style: TextStyle(
                          color: Colors.white, // Button text ka color
                          fontSize: 18,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            Colors.purple, // Button ka background color
                        minimumSize: Size(130, 40),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      onPressed: () {
                        if (_formKey.currentState?.validate() ?? false) {
                          Navigator.pushNamed(context, MyRoutes.homerRoute);
                        }
                      },
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
