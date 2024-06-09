import 'package:flutter/material.dart';
import 'package:login/pages/home/widget/bottom_body.dart';
import 'package:login/pages/home/widget/jumbo_tron.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Hi Your Name',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.black12,
                fontFamily: 'AbhayaLibre'),
          ),
          actions: [
            Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.circular(30.0), // Mengatur radius sudut
                image: const DecorationImage(
                  image: AssetImage('assets/images/person2.jpg'),
                  fit: BoxFit.cover, // Mengatur gambar mengikuti mode cover
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            )
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                Container(
                  width: 100,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    gradient: const LinearGradient(colors: [
                      Color.fromRGBO(15, 21, 27, 1),
                      Color.fromRGBO(15, 21, 27, 1),
                    ]),
                  ),
                  child: const Center(
                    child: Text(
                      "Today",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          fontFamily: 'AbhayaLibre',
                          color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  width: 100,
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.black38),
                  child: const Center(
                    child: Text(
                      "Calender",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          fontFamily: 'AbhayaLibre',
                          color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 100,
                ),
                Container(
                  width: 45,
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.black38),
                  child: const Center(
                      child: Icon(
                    Icons.add,
                    color: Colors.white,
                  )),
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(20, 8, 0, 0),
              child: Text(
                "Tuesday",
                style: TextStyle(
                    fontFamily: 'AbhayaLibre',
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
            ),
            const JumboTron(),
            const SizedBox(height: 10,),
            const BottomBody(),
          ],
        ));
  }
}






