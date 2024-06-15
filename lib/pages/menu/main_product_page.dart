import 'package:flutter/material.dart';
import 'package:login/pages/menu/body_product_page.dart';
import 'package:login/utils/colors.dart';
import 'package:login/widgets/bigtext.dart';
import 'package:login/widgets/smalltext.dart';

class MainProductPage extends StatefulWidget {
  const MainProductPage({super.key});

  @override
  State<MainProductPage> createState() => _MainProductPageState();
}

class _MainProductPageState extends State<MainProductPage> {
  @override
  Widget build(BuildContext context) {
    // print("current height is "+ MediaQuery.of(context).size.height.toString());
    // print("current width is "+ MediaQuery.of(context).size.width.toString());
    return Scaffold(
      body: Column(
        children: [
          // showing the header
          Container(
            padding: const EdgeInsets.only(top: 30.0,left: 10,right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Center(
                  child: Column(
                    children: [
                      BigText(
                        text: "Indonesia",
                      ),
                      Row(
                        children: [
                          SmallText(
                            text: "Jakarta",
                          ),
                          const Icon(Icons.arrow_drop_down)
                        ],
                      )
                    ],
                  ),
                ),
                Column(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColor.mainColor),
                      child: const Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          // showing the body
          const Expanded(child: SingleChildScrollView(
            child: ProductPageBody(),
          ))
        ],
      ),
    );
  }
}
