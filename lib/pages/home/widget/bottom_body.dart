import 'package:flutter/material.dart';
import 'package:login/pages/home/widget/detail_nextnote.dart';
import 'package:login/pages/home/widget/detail_note.dart';

class BottomBody extends StatelessWidget {
  const BottomBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(children: [
        Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30)),
              color: Color.fromRGBO(229, 230, 225, 1),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Today taks",style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'AbhayaLibre',fontSize: 25)),
                    Container(
                      width: 100,
                      height: 35,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.white),
                      child: const Center(child: Text('Reminders',style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'AbhayaLibre'),),),
                    )
                    ]),
            )),
             const Padding(
               padding: EdgeInsets.only(top: 60),
               child: Column(
                 children: [
                   DetailNotePage(),
                   SizedBox(height: 0.8,),
                   DetailNextnote()
                 ],
               ),
             ),
      ]),
    );
  }
}
