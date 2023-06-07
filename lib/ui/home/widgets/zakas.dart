import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:start_new_project/utils/app_colors.dart';
import 'package:start_new_project/utils/app_images.dart';

class Zakas extends StatefulWidget {
  const Zakas(
      {Key? key,
      required this.image,
      required this.text,
      required this.text2,
      required this.price})
      : super(key: key);

  final String image;
  final String text;
  final String text2;
  final String price;

  @override
  State<Zakas> createState() => _ZakasState();
}

class _ZakasState extends State<Zakas> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        height: height * (96 / 812),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: AppColors.C_22222A),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(14),
              child: Container(
                  height: 80, width: 80, child: Image.asset(widget.image)),
            ),
            SizedBox(
              width: 6,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: height * (12 / 812),
                ),
                Text(
                  widget.text,
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: AppColors.white),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  widget.text2,
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: AppColors.C_6A6A6E),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  widget.price,
                  style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: AppColors.white),
                ),
              ],
            ),
            Spacer(),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                color: AppColors.C_19191D
              ),
              height: height * (34 / 812),
              width: width * (90 / 375),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SvgPicture.asset(AppImages.plus),
                  Text(
                    "0",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      color: AppColors.white,
                    ),
                  ),
                  SvgPicture.asset(AppImages.minus),
                ],
              ),
            ),
            SizedBox(
              width: width * (16 / 375),
            ),
          ],
        ),
      ),
    );
  }
}
