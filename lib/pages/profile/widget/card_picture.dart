import 'package:flutter/material.dart';

class CardPicture extends StatelessWidget {
  const CardPicture({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
          child: Container(
            width: double.infinity,
            height: 450,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 200),
              child: Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Ikhsan purnomo",
                        style: TextStyle(
                            fontSize: 27,
                            fontFamily: 'AbhayaLibre',
                            fontWeight: FontWeight.w900),
                      ),
                      Icon(
                        Icons.check_circle,
                        color: Colors.blue,
                        size: 18,
                      )
                    ],
                  ),
                  const Text(
                    "lorem ipsum dolor teko,",
                    style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'AbhayaLibre',
                        fontWeight: FontWeight.w900),
                  ),
                  const Text(
                    "ini juga lorem lorem ipsum dolor teko,",
                    style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'AbhayaLibre',
                        fontWeight: FontWeight.w900),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 80, right: 80, top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              "500",
                              style: TextStyle(
                                  color: Colors.lightGreen,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Rating",
                              style: TextStyle(
                                  color: Color.fromRGBO(101, 70, 29, 1),
                                  fontSize: 18),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              "700",
                              style: TextStyle(
                                  color: Color.fromRGBO(101, 70, 29, 1),
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Followers",
                              style: TextStyle(
                                  color: Color.fromRGBO(101, 70, 29, 1),
                                  fontSize: 18),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              "142",
                              style: TextStyle(
                                  color: Color.fromRGBO(101, 70, 29, 1),
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Posts",
                              style: TextStyle(
                                  color: Color.fromRGBO(101, 70, 29, 1),
                                  fontSize: 18),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
                    child: Container(
                      width: 300,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: const Color.fromRGBO(101, 70, 29, 1),
                      ),
                      child: const Center(
                        child: Text(
                          'Subcribe',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              color: Colors.white,
                              fontFamily: 'AbhayaLibre'),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
          child: Container(
            width: double.infinity,
            height: 125,
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(30),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
          child: Container(
            width: double.infinity,
            height: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
            ),
            child: Center(
              child: Container(
                width: 110,
                height: 110,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 5),
                  borderRadius:
                      BorderRadius.circular(100.0), // Mengatur radius sudut
                  image: const DecorationImage(
                    image: AssetImage('assets/images/person2.jpg'),
                    fit: BoxFit.cover, // Mengatur gambar mengikuti mode cover
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
