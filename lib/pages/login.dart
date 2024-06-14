import 'package:flutter/material.dart';
import 'package:login/auth/auth_service.dart';
import 'package:login/pages/menu/main_product_page.dart';
import 'package:login/pages/register.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
              Color.fromRGBO(83, 60, 147, 85),
              Color.fromRGBO(83, 60, 147, 1),
            ])),
            child: const Padding(
              padding: EdgeInsets.only(top: 100, left: 60),
              child: Text(
                "Hello\nSign in!",
                style: TextStyle(
                    fontSize: 35,
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                    fontFamily: 'AbhayaLibre'),
              ),
            ),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 250),
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
                      TextField(
                        controller: emailController,
                        keyboardType: TextInputType.name,
                        decoration: const InputDecoration(
                            label: Text(
                          "Email",
                          style: TextStyle(
                              color: Color.fromRGBO(83, 60, 147, 85),
                              fontFamily: 'AbhayaLibre',
                              fontWeight: FontWeight.w700),
                        )),
                      ),
                      TextField(
                        controller: passwordController,
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: true,
                        decoration: const InputDecoration(
                            suffixIcon: Icon(
                              Icons.visibility,
                              color: Colors.grey,
                            ),
                            label: Text(
                              "Password",
                              style: TextStyle(
                                  color: Color.fromRGBO(83, 60, 147, 85),
                                  fontFamily: 'AbhayaLibre',
                                  fontWeight: FontWeight.w700),
                            )),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "Forgot Password?",
                          style: TextStyle(
                            color: Color.fromRGBO(83, 60, 147, 85),
                            fontFamily: 'AbhayaLibre',
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 70,
                      ),
                      InkWell(
                        onTap: () async {
                          final message = await AuthService().login(
                              email: emailController.text,
                              password: passwordController.text);
                          if (message!.contains('Success')) {
                            // ignore: use_build_context_synchronously
                            Navigator.of(context)
                                .pushReplacement(MaterialPageRoute(
                              builder: (context) => const MainProductPage(),
                            ));
                          }
                          // print(message);
                          // ignore: use_build_context_synchronously
                          ScaffoldMessenger.of(context)
                              .showSnackBar(SnackBar(content: Text(message)));
                        },
                        child: Container(
                          height: 55,
                          width: 300,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              gradient: const LinearGradient(colors: [
                                Color.fromRGBO(80, 137, 198, 1),
                                Color.fromRGBO(83, 60, 147, 85),
                              ])),
                          child: const Center(
                            child: Text(
                              "SIGN IN",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'AbhayaLibre',
                                  fontWeight: FontWeight.w900,
                                  fontSize: 20),
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
                                fontFamily: 'AbhayaLibre',
                                fontWeight: FontWeight.w900,
                                fontSize: 15,
                                color: Colors.grey,
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const RegisterPage(),
                                ));
                              },
                              child: const Text(
                                "Sign up",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17,
                                  color: Color.fromRGBO(83, 60, 147, 85),
                                ),
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
