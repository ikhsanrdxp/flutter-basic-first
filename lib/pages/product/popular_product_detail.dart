import 'package:flutter/material.dart';
import 'package:login/pages/profile/widget/color_and_text.dart';
import 'package:login/utils/colors.dart';
import 'package:login/utils/dimensions.dart';
import 'package:login/widgets/app_icon.dart';
import 'package:login/widgets/bigtext.dart';
import 'package:login/widgets/smalltext.dart';

class PopularProductDetail extends StatelessWidget {
  const PopularProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: 300,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image:
                          AssetImage("assets/images/matcha-cream-latte.jpg"))),
            ),
          ),
          const Positioned(
              top: 40,
              left: 20,
              right: 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppIcon(icon: Icons.arrow_back_ios),
                  AppIcon(icon: Icons.shopping_cart_outlined),
                ],
              )),
          Positioned(
            left: 0,
            right: 0,
            top: 280,
            child: Container(
              padding: EdgeInsets.only(left: 20, right: 20, top: 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.white),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BigText(
                    text: "Matcha Cream Latte",
                    color: AppColor.titleColor,
                  ),
                  Row(
                    children: [
                      Wrap(
                        children: List.generate(
                            5,
                            (index) => const Icon(
                                  Icons.star,
                                  size: 16,
                                  color: AppColor.mainColor,
                                )),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      SmallText(
                          text: "5.0", size: 14, color: AppColor.textColor),
                      const SizedBox(
                        width: 10,
                      ),
                      SmallText(
                        text: "1287 comments",
                        size: 14,
                        color: AppColor.textColor,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: Dimensions.height20,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ColorAndText(
                          icon: Icons.circle_sharp,
                          text: "Normal",
                          color: AppColor.textColor,
                          iconColor: AppColor.iconColor1),
                      ColorAndText(
                          icon: Icons.location_on_sharp,
                          text: "1.7Km",
                          color: AppColor.textColor,
                          iconColor: AppColor.mainColor),
                      ColorAndText(
                          icon: Icons.watch_later_outlined,
                          text: "32min",
                          color: AppColor.textColor,
                          iconColor: AppColor.iconColor1),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: [
                      BigText(
                        text: "Introduce",
                        color: AppColor.titleColor,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        style: TextStyle(color: AppColor.textColor,),
                          "A Matcha Latte is a tea-based beverage combining vivid green matcha tea powder and milk, or a dairy substitute, to create a smooth, creamy, caffeinated coffee alternative. Many tearooms and coffee shops offer Matcha Lattes both hot and iced.A Matcha Latte is made with a base of matcha powder whisked or mixed with hot water, then topped with steamed milk (or oat, almond, etc.),  just as when pouring a traditional espresso latte. It is often sweetened with honey or agave, if it is sweetened at all., just as when pouring a traditional espresso latte. It is often sweetened with honey or agave, if it is sweetened at all.")
                    ],
                  )
                ],
              ),
            ),
          ),
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 90,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: AppColor.buttonBackgroundColor),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Container(
                            width: 100,
                            height: 50,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.white),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Icon(Icons.remove,color: AppColor.textColor,),
                              BigText(text: "0",color: AppColor.titleColor,),
                              const Icon(Icons.add,color: AppColor.textColor)
                            ],
                          ),
                          ),
                        ),
                        
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Container(
                            width: 180,
                            height: 50,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: AppColor.mainColor),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text( "24K",style: TextStyle(color: Colors.white,fontSize: 18),),
                              Text( "Add to chart",style: TextStyle(color: Colors.white,fontSize: 18),),
                            ],
                          ),
                          ),
                        ),
                      ],
                    ),
              ))
        ],
      ),
    );
  }
}
