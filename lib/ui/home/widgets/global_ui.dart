import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:start_new_project/utils/app_colors.dart';

class GlobalUI extends StatelessWidget {
  const GlobalUI(
      {Key? key,
      required this.text1,
      required this.text2,
      required this.text3,
      required this.text4, required this.icon})
      : super(key: key);

  final String text1;
  final String text2;
  final String text3;
  final String text4;
  final String icon;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        color: Color(0xFF4229A2),
        height: height * (160 / 812),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 13,
              ),
              Text(text1,style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: AppColors.white
              ),),
              SizedBox(
                height: 19,
              ),
              Row(
                children: [
                  SvgPicture.asset(icon),
                  SizedBox(width: 3,),
                  Text(text2,style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: AppColors.white,
                  ),)
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  SvgPicture.asset(icon),
                  SizedBox(width: 3,),
                  Text(text3,style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: AppColors.white,
                  ),)
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  SvgPicture.asset(icon),
                  SizedBox(width: 3,),
                  Text(text4,style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: AppColors.white,
                  ),)
                ],
              ),


            ],
          ),
        ),
      ),
    );
  }
}
