import 'package:flutter/material.dart';
import 'package:login/pages/login.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
              Color(0xffB81736),
              Color(0xff281537),
            ])),
            child: const Padding(
              padding: EdgeInsets.only(top: 60, left: 60),
              child: Text(
                "Hello\nSign up!",
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 200),
              child: Container(
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30)),
                    color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.all(50),
                  child: Column(
                    children: [
                      const TextField(
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                            label: Text(
                          "Full Name",
                          style: TextStyle(
                            color: Color(0xffB81736),
                          ),
                        )),
                      ),
                      const TextField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            label: Text(
                          "Email",
                          style: TextStyle(
                            color: Color(0xffB81736),
                          ),
                        )),
                      ),
                      const TextField(
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: true,
                        decoration: InputDecoration(
                            suffixIcon: Icon(
                              Icons.visibility,
                              color: Colors.grey,
                            ),
                            label: Text(
                              "Password",
                              style: TextStyle(
                                color: Color(0xffB81736),
                              ),
                            )),
                      ),
                      const TextField(
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: true,
                        decoration: InputDecoration(
                            suffixIcon: Icon(
                              Icons.visibility,
                              color: Colors.grey,
                            ),
                            label: Text(
                              "Confirm Password",
                              style: TextStyle(
                                color: Color(0xffB81736),
                              ),
                            )),
                      ),
                      const SizedBox(
                        height: 70,
                      ),
                      InkWell(
                        child: Container(
                          height: 55,
                          width: 300,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              gradient: const LinearGradient(colors: [
                                Color(0xffB81736),
                                Color(0xff281537),
                              ])),
                          child: const Center(
                            child: Text(
                              "SIGN IN",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 100,
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const Text(
                              "Don't Have an Account?",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Colors.grey),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop(MaterialPageRoute(
                                  builder: (context) => const LoginPage(),
                                ));
                              },
                              child: const Text(
                                "Sign in",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17,
                                    color: Color(0xff281537)),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
