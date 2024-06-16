import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login/pages/home/home.dart';
import 'package:login/pages/login.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:login/pages/menu/main_product_page.dart';
import 'package:login/pages/product/popular_product_detail.dart';
import 'package:login/pages/profile/profile.dart';
import 'package:login/pages/register.dart';
import 'firebase_options.dart';
import 'package:firebase_auth/firebase_auth.dart' hide EmailAuthProvider;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  FirebaseUIAuth.configureProviders([
    EmailAuthProvider(),
  ]);

  // Both of the following lines are good for testing,
  // but can be removed for release builds
  await FirebaseAuth.instance.useAuthEmulator('localhost', 9099);
  await FirebaseAuth.instance.signOut();

  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});
  

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/popular_product_detail',
      routes: {
        '/' : (context) => const LoginPage(),
        '/home' : (context) => const HomePage(),
        '/register' : (context) => const RegisterPage(),
        '/profile' : (context) => const ProfilePage(),
        '/mainproduct' : (context) => const MainProductPage(),
        '/popular_product_detail' : (context) => const PopularProductDetail(),
      },
    );
  }
}