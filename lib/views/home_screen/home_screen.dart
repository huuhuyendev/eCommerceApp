import 'package:ecommerceapp/consts/consts.dart';
import 'package:ecommerceapp/consts/lists.dart';
import 'package:ecommerceapp/widget_common/featured_button.dart';
import 'package:ecommerceapp/widget_common/home_buttons.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      color: lightGrey,
      width: context.screenWidth,
      height: context.screenHeight,
      child: SafeArea(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              height: 60,
              color: lightGrey,
              child: TextFormField(
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  suffixIcon: Icon(Icons.search),
                  filled: true,
                  fillColor: whiteColor,
                  hintText: searchAnything,
                  hintStyle: TextStyle(
                    color: textfieldGrey,
                  ),
                ),
              ),
            ),
            10.heightBox,
            Expanded(
                child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  VxSwiper.builder(
                    aspectRatio: 16 / 9,
                    autoPlay: true,
                    height: 150,
                    enlargeCenterPage: true,
                    itemCount: sliderList.length,
                    itemBuilder: (context, index) {
                      return Image.asset(
                        sliderList[index],
                        fit: BoxFit.fill,
                      )
                          .box
                          .rounded
                          .clip(Clip.antiAlias)
                          .margin(const EdgeInsets.symmetric(horizontal: 8))
                          .make();
                    },
                  ),
                  10.heightBox,
                  // deals buttons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(
                        2,
                        (index) => homeButtons(
                              height: context.screenHeight * 0.15,
                              width: context.screenWidth / 2.5,
                              icon: index == 0 ? icTodaysDeal : icFlashDeal,
                              title: index == 0 ? todayDeals : flashSale,
                            )),
                  ),
                  //   2nd swiper
                  10.heightBox,
                  VxSwiper.builder(
                    aspectRatio: 16 / 9,
                    autoPlay: true,
                    height: 150,
                    enlargeCenterPage: true,
                    itemCount: secondSliderList.length,
                    itemBuilder: (context, index) {
                      return Image.asset(
                        secondSliderList[index],
                        fit: BoxFit.fill,
                      )
                          .box
                          .rounded
                          .clip(Clip.antiAlias)
                          .margin(const EdgeInsets.symmetric(horizontal: 8))
                          .make();
                    },
                  ),
                  10.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(
                        3,
                        (index) => homeButtons(
                              height: context.screenHeight * 0.15,
                              width: context.screenWidth / 3.5,
                              icon: index == 0
                                  ? icTopCategories
                                  : index == 1
                                      ? icBrands
                                      : icTopSeller,
                              title: index == 0
                                  ? topCategories
                                  : index == 1
                                      ? brand
                                      : topSellers,
                            )),
                  ),
                  //   featured categories
                  10.heightBox,
                  Align(
                    alignment: Alignment.centerLeft,
                    child: featuredCategories.text
                        .color(darkFontGrey)
                        .size(18)
                        .fontFamily(semibold)
                        .make(),
                  ),
                  20.heightBox,
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(
                          3,
                          (index) => Column(children: [
                                featuredButton(
                                  icon: featuredImage1[index],
                                  title: featuredTitle1[index],
                                ),
                                10.heightBox,
                                featuredButton(
                                  icon: featuredImage2[index],
                                  title: featuredTitle2[index],
                                ),
                              ])).toList(),
                    ),
                  ),
                  //   featured product
                  20.heightBox,
                  Container(
                    padding: const EdgeInsets.all(12),
                    width: double.infinity,
                    decoration: const BoxDecoration(color: redColor),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        featuredProducts.text.white
                            .size(18)
                            .fontFamily(bold)
                            .make(),
                        10.heightBox,
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                              children: List.generate(
                                  6,
                                  (index) => Column(
                                        children: [
                                          Image.asset(
                                            imgP1,
                                            width: 150,
                                            fit: BoxFit.cover,
                                          ),
                                          10.heightBox,
                                          "Laptop 4GB/64GB"
                                              .text
                                              .fontFamily(semibold)
                                              .color(darkFontGrey)
                                              .make(),
                                          10.heightBox,
                                          "\$200"
                                              .text
                                              .fontFamily(semibold)
                                              .color(redColor)

                                              .make(),
                                        ],
                                      )
                                          .box
                                          .white
                                          .margin(const EdgeInsets.symmetric(
                                              horizontal: 4))
                                          .roundedSM
                                          .padding(const EdgeInsets.all(8))
                                          .make())),
                        )
                      ],
                    ),
                  ),
                  20.heightBox,
                  VxSwiper.builder(
                    aspectRatio: 16 / 9,
                    autoPlay: true,
                    height: 150,
                    enlargeCenterPage: true,
                    itemCount: secondSliderList.length,
                    itemBuilder: (context, index) {
                      return Image.asset(
                        secondSliderList[index],
                        fit: BoxFit.fill,
                      )
                          .box
                          .rounded
                          .clip(Clip.antiAlias)
                          .margin(const EdgeInsets.symmetric(horizontal: 8))
                          .make();
                    },
                  ),
                  20.heightBox,
                  GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 6,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 8,
                            crossAxisSpacing: 8,
                            mainAxisExtent: 300
                        ),
                    itemBuilder: (context, index) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            imgP5,
                            width: 200,
                            height: 200,
                            fit: BoxFit.cover,
                          ),
                          const Spacer(),
                          "Laptop 4GB/64GB"
                              .text
                              .fontFamily(semibold)
                              .color(darkFontGrey)
                              .make(),
                          10.heightBox,
                          "\$600"
                              .text
                              .fontFamily(semibold)
                              .color(redColor)
                              .make(),
                        ],
                      )
                          .box
                          .white
                          .margin(const EdgeInsets.symmetric(
                          horizontal: 4))
                          .roundedSM
                          .padding(const EdgeInsets.all(12))
                          .make();
                    },
                  ),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
