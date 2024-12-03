import 'package:flutter/material.dart';
import 'package:restaurant/pages/login.dart';
import 'package:restaurant/widget/widget_support.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(0),
            child: Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 2.5,
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                        Color(0xFFff5c30),
                        Color(0xFFe74b1a),
                      ])),
                ),
                Container(
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height / 3),
                  height: MediaQuery.of(context).size.height / 2.5,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40))),
                  child: const Text(""),
                ),
                Container(
                  margin:
                      const EdgeInsets.only(top: 40.0, left: 20.0, right: 20.0),
                  child: Column(
                    children: [
                      Center(
                          child: Image.asset(
                        "assets/images/logo.png",
                        width: MediaQuery.of(context).size.width / 1.5,
                        fit: BoxFit.cover,
                      )),
                      const SizedBox(
                        height: 30.0,
                      ),
                      Material(
                        elevation: 5.0,
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          padding:
                              const EdgeInsets.only(left: 20.0, right: 20.0),
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height / 1.55,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: Form(
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 20.0,
                                ),
                                Text(
                                  "Sign up",
                                  style: AppWidget.headLineTextFeildStyle(),
                                ),
                                const SizedBox(
                                  height: 30.0,
                                ),
                                TextFormField(
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please Enter Name';
                                    }
                                    return null;
                                  },
                                  decoration: InputDecoration(
                                      hintText: 'Name',
                                      hintStyle:
                                          AppWidget.semiBoldTextFeildStyle(),
                                      prefixIcon:
                                          const Icon(Icons.person_outlined)),
                                ),
                                const SizedBox(
                                  height: 30.0,
                                ),
                                TextFormField(
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please Enter E-mail';
                                    }
                                    return null;
                                  },
                                  decoration: InputDecoration(
                                      hintText: 'Email',
                                      hintStyle:
                                          AppWidget.semiBoldTextFeildStyle(),
                                      prefixIcon:
                                          const Icon(Icons.email_outlined)),
                                ),
                                const SizedBox(
                                  height: 30.0,
                                ),
                                TextFormField(
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please Enter Password';
                                    }
                                    return null;
                                  },
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      hintText: 'Password',
                                      hintStyle:
                                          AppWidget.semiBoldTextFeildStyle(),
                                      prefixIcon:
                                          const Icon(Icons.password_outlined)),
                                ),
                                const SizedBox(
                                  height: 30.0,
                                ),
                                GestureDetector(
                                  onTap: () async {},
                                  child: Material(
                                    elevation: 5.0,
                                    borderRadius: BorderRadius.circular(20),
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 8.0),
                                      width: 200,
                                      decoration: BoxDecoration(
                                          color: const Color(0Xffff5722),
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: const Center(
                                          child: Text(
                                        "SIGN UP",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18.0,
                                            fontFamily: 'Poppins1',
                                            fontWeight: FontWeight.bold),
                                      )),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),
                      GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const LogIn()));
                          },
                          child: Text(
                            "Already have an account? Login",
                            style: AppWidget.semiBoldTextFeildStyle(),
                          ))
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
