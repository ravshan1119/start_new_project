import 'package:flutter/material.dart';
import 'package:start_new_project/utils/app_colors.dart';
import 'package:start_new_project/utils/app_images.dart';

class Social extends StatelessWidget {
  const Social({Key? key, required this.icon, required this.text})
      : super(key: key);

  final String icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      width: width * (153 / 375),
      height: height * (56 / 812),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: AppColors.C_22222A,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 13, bottom: 13),
            child: Image.asset(icon),
          ),
          Text(
            text,
            style: TextStyle(
                fontFamily: "Poppins",
                fontWeight: FontWeight.w500,
                fontSize: 14,
                color: AppColors.white),
          )
        ],
      ),
    );
  }
}
