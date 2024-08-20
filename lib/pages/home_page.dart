import 'package:flutter/material.dart';

import 'package:plant_app_ui/utils/colors.dart';
import 'package:plant_app_ui/widgets/custom_text.dart';
import 'package:plant_app_ui/widgets/tile1.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          items: [
          BottomNavigationBarItem(icon: Image.asset("assets/icons/flower.png"),label: "Home"),
          BottomNavigationBarItem(icon: Image.asset("assets/icons/heart-icon.png"),label: "Favourite"),
          BottomNavigationBarItem(icon: Image.asset("assets/icons/user-icon.png"),label: "Me"),
        ]),
        resizeToAvoidBottomInset: true,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                // SizedBox to control the height of the first Stack
                height: 270, // Set a height that accommodates the content
                child: Stack(
                  children: [
                    Container(
                      // Background container for the top section
                      height: 220,
                      width: double.maxFinite,
                      decoration: const BoxDecoration(
                        color: AppColors.mainColor,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(40),
                          bottomRight: Radius.circular(40),
                        ),
                      ),
                    ), // Background container ended
                    Positioned(
                      // Menu icon positioned at the top left
                      top: 20,
                      left: 20,
                      child: Image.asset("assets/icons/menu.png"),
                    ), // Menu icon ended
                    Positioned(
                      // Greeting text and logo positioned below the menu icon
                      top: 70,
                      left: 20,
                      right: 20,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                         const BoldText(
                            text: "Hi Uishopy!",
                            size: 32,
                            color: Colors.white,
                            letterSpacinng: 1.4,
                            fontWeight: FontWeight.w800,
                          ),
                          SizedBox(
                            height: 60,
                            width: 60,
                            child: Image.asset("assets/images/logo.png")),
                        ],
                      ),
                    ), // Greeting text and logo ended
                    Positioned(
                      // Positioned container for the search bar
                      top: 195,
                      left: 20,
                      right: 20,
                      child: Container(
                        width: double.maxFinite,
                        height: 50,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: AppColors.mainColor.withOpacity(.2),
                              spreadRadius: 5,
                              blurRadius: 20,
                              offset: const Offset(0, 10),
                            ),
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Row(
                            children: [
                              Expanded(
                                // Search text field
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      label: Text(
                                        "Search",
                                        style: TextStyle(
                                            color: Colors.green.withOpacity(.6),
                                            fontSize: 16),
                                      ),
                                      border: InputBorder.none),
                                ),
                              ),
                              SizedBox(
                                height: 24,
                                width: 24,
                                child: Image.asset(
                                  "assets/icons/search.png",
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ), // Positioned container ended
                  ],
                ), // First Stack ended
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    const BoldText(
                      text: "Recomended",
                      size: 18,
                      fontWeight: FontWeight.w700,
                      letterSpacinng: 1.5,
                    ),
                    const Spacer(),
                    Container(
                      // Container for the "More" button
                      height: 25,
                      width: 50,
                      decoration: BoxDecoration(
                          color: AppColors.mainColor,
                          borderRadius: BorderRadius.circular(20)),
                      child: const Center(
                          child: BoldText(
                        text: "More",
                        color: Colors.white,
                        size: 12,
                      )),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ), // Recommended row ended
                
              SizedBox(
                  height: 210,
                  width: double.maxFinite,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      // Tile container
                      const SizedBox(
                        width: 20,
                      ),
                      Tile1(
                          country: "RUSSIA",
                          imagePath: "assets/images/image_1.png",
                          name: "SAMANTHA",
                          price: "\$400"),
                      const SizedBox(
                        width: 20,
                      ),
                      Tile1(
                          country: "RUSSIA",
                          imagePath: "assets/images/image_2.png",
                          name: "ANGELICA",
                          price: "\$540"),
                      const SizedBox(
                        width: 20,
                      ),
                      Tile1(
                          country: "RUSSIA",
                          imagePath: "assets/images/image_3.png",
                          name: "SAMANTHA",
                          price: "\$400"),
                      const SizedBox(
                        width: 20,
                      ),
                      Tile1(
                          country: "RUSSIA",
                          imagePath: "assets/images/image_1.png",
                          name: "SAMANTHA",
                          price: "\$400"),
                    ],
                  ),),
                  SizedBox(height: 15,),
                  Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    const BoldText(
                      text: "Featured Plant",
                      size: 18,
                      fontWeight: FontWeight.w700,
                      letterSpacinng: 1.5,
                    ),
                    const Spacer(),
                    Container(
                      // Container for the "More" button
                      height: 25,
                      width: 50,
                      decoration: BoxDecoration(
                          color: AppColors.mainColor,
                          borderRadius: BorderRadius.circular(20)),
                      child: const Center(
                          child: BoldText(
                        text: "More",
                        color: Colors.white,
                        size: 12,
                      )),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15,),
              SizedBox(
                height: 200,
                width: double.maxFinite,
                
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: ListView(
                    
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        height: 200,
                  width: 250,
                         decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                   
                    image:const DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage("assets/images/bottom_img_1.png"))
                    ),
                      ),
                      const SizedBox(width: 20,),
                       Container(
                        height: 200,
                  width: 250,
                         decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                   
                    image:const DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage("assets/images/bottom_img_2.png"))
                    ),
                      ),
                      const SizedBox(width: 20,),
                       Container(
                        height: 200,
                  width: 250,
                         decoration: BoxDecoration(
                          
                    borderRadius: BorderRadius.circular(10),
                   
                    image:const DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage("assets/images/bottom_img_1.png"))
                    ),
                      ),
                  
                  
                    ],
                  ),
                ),
              ),
                  
            ],
          ),
        ),
      ),
    );
  }
}
