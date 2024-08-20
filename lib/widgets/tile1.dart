import 'package:flutter/material.dart';
import 'package:plant_app_ui/utils/colors.dart';
import 'package:plant_app_ui/widgets/custom_text.dart';

class Tile1 extends StatelessWidget {
  String imagePath;
  String price;
  String name;
  String country;
  Tile1(
      {super.key,
      required this.country,
      required this.imagePath,
      required this.name,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 210,
      width: 160,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color:
              AppColors.mainColor.withOpacity(0.2), // Shadow color with opacity
          spreadRadius: 2, // How far the shadow spreads
          blurRadius: 18, // How soft the shadow looks
          offset: const Offset(0, 20), // X and Y offset of the shadow
        ),
      ], color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          Container(
            // Image Contianer starts here

            height: 150,
            width: 160,
            decoration: BoxDecoration(
              // borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.fill),
            ),
          ),
          // Image Containe ended here
          const SizedBox(
            height: 8,
          ),
           Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                BoldText(
                  text: name,
                  size: 12,
                  fontWeight: FontWeight.bold,
                ),
               const Spacer(),
                BoldText(
                  text: price,
                 
                  size: 12,
                  fontWeight: FontWeight.w400,
                  color: AppColors.mainColor,
                ),
              ],
            ),
          ),

        Padding(
            padding: EdgeInsets.symmetric(horizontal: 10,vertical: 3),
            child: Row(
              children: [
                BoldText(
                  text: country,
                  size: 12,
                  
                  fontWeight: FontWeight.w600,
                  color: AppColors.mainColor,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
