import 'package:flutter/material.dart';

class JumboTron extends StatelessWidget {
  const JumboTron({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: const Color.fromRGBO(229, 230, 225, 1),
        ),
        child: Row(children: [
          const Expanded(
            flex: 65,
            child: Center(
              child: Column(
                children: [
                  Expanded(
                    flex: 1,
                    child: Text(
                      "13.12",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 80,
                          fontFamily: 'AbhayaLibre'),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Text(
                      "DEC",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 80,
                          fontFamily: 'AbhayaLibre'),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Column(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(),
                ),
                Expanded(
                  flex: 6,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          color: Colors.black38,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(),
                ),
              ],
            ),
          ),
          const Expanded(
              flex: 33,
              child: Column(
                children: [
                  Expanded(
                    flex: 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          '1:20 PM',
                          style: TextStyle(
                              fontFamily: 'AbhayaLibre',
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'New York',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'AbhayaLibre'),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '6:20 PM',
                          style: TextStyle(
                              fontFamily: 'AbhayaLibre',
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'United Kingdom',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'AbhayaLibre'),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  )
                ],
              )),
        ]));
  }
}
