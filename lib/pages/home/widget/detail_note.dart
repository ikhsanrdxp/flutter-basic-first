import 'package:flutter/material.dart';

class DetailNotePage extends StatelessWidget {
  const DetailNotePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: const Color.fromRGBO(228, 184, 117, 1),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "You Have\nA Meeting",
                  style: TextStyle(
                      fontFamily: 'AbhyaLibre',
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Color.fromRGBO(101, 70, 29, 1)),
                ),
                Text("-")
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "03:00 AM",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'AbhayaLibre',
                          color: Color.fromRGBO(101, 70, 29, 1)),
                    ),
                    Text(
                      "Start",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'AbhayaLibre',
                          color: Color.fromRGBO(101, 70, 29, 1)),
                    )
                  ],
                ),
                Container(
                  width: 100,
                  height: 35,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: const Color.fromRGBO(101,70,29,1)),
                  child: const Center(
                    child: Text(
                      '30 Min',
                      style: TextStyle(
                        color: const Color.fromRGBO(228, 184, 117, 1),
                          fontWeight: FontWeight.bold,
                          fontFamily: 'AbhayaLibre'),
                    ),
                  ),
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "03:00 AM",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'AbhayaLibre',
                          color: Color.fromRGBO(101, 70, 29, 1)),
                    ),
                    Text(
                      "Start",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'AbhayaLibre',
                          color: Color.fromRGBO(101, 70, 29, 1)),
                    )
                  ],
                )
              ],
            )
          ]),
        ));
  }
}
