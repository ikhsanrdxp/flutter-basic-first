import 'package:flutter/material.dart';
import 'package:login/pages/profile/widget/card_picture.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
           const Padding(
             padding: EdgeInsets.all(8.0),
             child: CardPicture(),
           ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10,470,10,0),
            child: Container(
              width: double.infinity,
              height: 300,
              color: Colors.white,
              child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, // Number of columns in the grid
                crossAxisSpacing: 1, // Spacing between columns
                mainAxisSpacing: 2.0, // Spacing between rows
              ),
              itemCount: 9, // Number of items in the grid
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(3.0),
                  ),
                  child: Center(
                    child: Text(
                      'Item $index',
                      style: const TextStyle(color: Colors.white, fontSize: 16.0),
                    ),
                  ),
                );
              },
            ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 500),
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // Number of columns in the grid
                crossAxisSpacing: 5.0, // Spacing between columns
                mainAxisSpacing: 5.0, // Spacing between rows
              ),
              itemCount: 20, // Number of items in the grid
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Center(
                    child: Text(
                      'Item $index',
                      style: const TextStyle(color: Colors.white, fontSize: 16.0),
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
