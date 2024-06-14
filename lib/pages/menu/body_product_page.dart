import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:login/pages/profile/widget/color_and_text.dart';
import 'package:login/utils/colors.dart';
import 'package:login/utils/dimensions.dart';
import 'package:login/widgets/bigtext.dart';
import 'package:login/widgets/smalltext.dart';

class ProductPageBody extends StatefulWidget {
  const ProductPageBody({super.key});

  @override
  State<ProductPageBody> createState() => _ProductPageBodyState();
}

class _ProductPageBodyState extends State<ProductPageBody> {
  PageController pageController = PageController(viewportFraction: 0.85);
  var _currenPageValue = 0.0;
  final double _scaleFactor = 0.8;
  final double _height = 220;

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currenPageValue = pageController.page!;
      });
    });
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // slider section
        Container(
          // margin: EdgeInsets.all(10),
          padding: const EdgeInsets.only(top: 5),
          // color: Colors.redAccent,
          height: Dimensions.pageView,
          child: PageView.builder(
              controller: pageController,
              itemCount: 5,
              itemBuilder: (context, position) {
                return _buildPageItem(position);
              }),
        ),
        // dots
        DotsIndicator(
          dotsCount: 5,
          position: _currenPageValue.toInt(),
          decorator: DotsDecorator(
            activeColor: AppColor.mainColor,
            size: const Size.square(9.0),
            activeSize: const Size(18.0, 9.0),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0)),
          ),
        ),
        // popular text
        SizedBox(
          height: Dimensions.height30,
        ),
        Container(
          margin: EdgeInsets.only(left: Dimensions.width10),
          child: Row(
            children: [
              BigText(
                text: "Popular",
                color: AppColor.mainBlackColor,
              ),
              SizedBox(
                width: Dimensions.height10,
              ),
              const Icon(
                Icons.circle,
                size: 5,
                color: AppColor.textColor,
              ),
              SizedBox(
                width: Dimensions.height10,
              ),
              SmallText(
                text: "Food pairing",
                size: 12,
              )
            ],
          ),
        ),
        // list of food and images
        ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 5,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(
                    left: Dimensions.width10,
                    right: Dimensions.width10,
                    bottom: Dimensions.height10),
                child: Row(
                  children: [
                    // image section
                    Container(
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.amber,
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                  "assets/images/pesto-ferara.jpg"))),
                    ),
                    // text container
                    Expanded(
                      child: Container(
                        height: 100,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                bottomRight: Radius.circular(20)),
                            color: Colors.white),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              BigText(
                                text: "Nutritious fruit meal in China",
                                color: AppColor.titleColor,
                              ),
                              SmallText(text: "With Chinese characteristics",size: 14,color: AppColor.textColor,),
                              const SizedBox(height: 10,),
                              const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              );
            })
      ],
    );
  }

  Widget _buildPageItem(int index) {
    Matrix4 matrix = Matrix4.identity();
    if (index == _currenPageValue.floor()) {
      var currScale = 1 - (_currenPageValue - index) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currenPageValue.floor() + 1) {
      var currScale =
          _scaleFactor + (_currenPageValue - index + 1) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currenPageValue.floor() - 1) {
      var currScale = 1 - (_currenPageValue - index) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else {
      var currScale = 0.8;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, _height * (1 - _scaleFactor) / 2, 1);
    }
    return Transform(
      transform: matrix,
      child: Stack(
        children: [
          Container(
            height: Dimensions.pageViewContainer,
            margin: const EdgeInsets.only(left: 5, right: 5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: const DecorationImage(
                    image: AssetImage('assets/images/pesto-ferara.jpg'),
                    fit: BoxFit.cover)),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: 250,
              height: Dimensions.pageViewTextContainer,
              margin: const EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                        color: Color(0xFFe8e8e8),
                        blurRadius: 5,
                        offset: Offset(0, 5)),
                    BoxShadow(color: Colors.white, offset: Offset(-5, 0)),
                    BoxShadow(color: Colors.white, offset: Offset(5, 0)),
                  ]),
              child: Padding(
                padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BigText(
                      text: "Chinese Side",
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
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
