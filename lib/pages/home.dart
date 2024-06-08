import 'package:flutter/material.dart';
import 'package:login/auth/auth_service.dart';
import 'package:login/pages/login.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    AuthService services = AuthService();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Content',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 25, color: Colors.white),
        ),
        backgroundColor: const Color.fromRGBO(83, 60, 147, 85),
        actions: [
          IconButton(
              onPressed: () async {
                await services.logout();
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => const LoginPage(),
                ));
              },
              icon: const Icon(Icons.logout_rounded))
        ],
      ),
      body: const Center(
        child: Text('Home Page'),
      ),
    );
  }
}
