import 'package:ecommerceapp/consts/consts.dart';import 'package:ecommerceapp/consts/lists.dart';import 'package:ecommerceapp/views/profile_screen/components/details_card.dart';import 'package:ecommerceapp/widget_common/bg_widget.dart';import 'package:flutter/material.dart';class ProfileScreen extends StatelessWidget {  const ProfileScreen({super.key});  @override  Widget build(BuildContext context) {    return bgWidget(      child: Scaffold(        body: SafeArea(          child: Column(            children: [              // edit profile button              Padding(                padding: const EdgeInsets.all(8.0),                child: const Align(                  alignment: Alignment.topRight,                  child: Icon(                    Icons.edit,                    color: whiteColor,                  ),                ).onTap(() {}),              ),              // user              Padding(                padding: const EdgeInsets.symmetric(horizontal: 8.0),                child: Row(                  children: [                    Image.asset(                      imgProfile2,                      width: 100,                      fit: BoxFit.cover,                    ).box.roundedFull.clip(Clip.antiAlias).make(),                    10.widthBox,                    Expanded(                      child: Column(                        crossAxisAlignment: CrossAxisAlignment.start,                        children: [                          "Rural Coder".text.fontFamily(semibold).white.make(),                          "ruralcoder18@gmail.com".text.white.make(),                        ],                      ),                    ),                    OutlinedButton(                        onPressed: () {},                        style: OutlinedButton.styleFrom(                            side: const BorderSide(color: whiteColor)),                        child: "Logout".text.white.fontFamily(semibold).make())                  ],                ),              ),              20.heightBox,              Row(                mainAxisAlignment: MainAxisAlignment.spaceEvenly,                children: [                  detailsCard(                    count: "00",                    title: "in your cart",                    width: context.screenWidth / 3.4,                  ),                  detailsCard(                    count: "18",                    title: "in your wishlist",                    width: context.screenWidth / 3.4,                  ),                  detailsCard(                    count: "12",                    title: "in your orders",                    width: context.screenWidth / 3.4,                  ),                ],              ),              //   button section              ListView.separated(                shrinkWrap: true,                separatorBuilder: (context, index) => const Divider(                  color: lightGrey,                ),                itemCount: profileButtonList.length,                itemBuilder: (BuildContext context, index) {                  return ListTile(                    leading: Image.asset(                      profileButtonIcon[index],                      width: 22,                    ),                    title: profileButtonList[index].text.fontFamily(semibold).color(darkFontGrey).make(),                  );                },              ).box.white.rounded.margin(EdgeInsets.all(12)).padding(const EdgeInsets.symmetric(horizontal: 16)).shadowSm.make().box.color(redColor).make(),            ],          ),        ),      ),    );  }}