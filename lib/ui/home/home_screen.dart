import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:start_new_project/ui/home/widgets/global_ui.dart';
import 'package:start_new_project/utils/app_colors.dart';
import 'package:start_new_project/utils/app_images.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.C_3A0CA3,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: height * (44 / 812),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  SizedBox(
                    height: 50,
                    width: 50,
                    child: Image.asset(AppImages.men),
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hoşgeldin",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: AppColors.white.withOpacity(0.6),
                        ),
                      ),
                      Text(
                        "Doğukan Erel",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: AppColors.white,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  SvgPicture.asset(AppImages.settings),
                  SizedBox(
                    width: 5,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 35,
            ),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Container(
                    height: 24,
                    width: width * (327 / 375),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: AppColors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Container(
                    height: 24,
                    width: width * (253 / 375),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: AppColors.C_F72585),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 26, top: 7),
                  child: Text(
                    "200",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 8,
                        color: AppColors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 340, top: 7),
                  child: Text(
                    "200",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 8,
                        color: Colors.black),
                  ),
                ),
              ],
            ),
            SizedBox(height: 4,),
            Row(

              mainAxisAlignment: MainAxisAlignment.end,
              children: [

                Text("İndirim kuponu için son 50 puan!",style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 8,
                  color: AppColors.white.withOpacity(0.6),
                ),),
                SizedBox(width: 28,),

              ],
            ),
            SizedBox(
              height: height * (46 / 812),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: height * (59 / 812),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: AppColors.C_46B658),
                child: Center(
                  child: Text(
                    "Favorilerim",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: AppColors.white),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height * (47 / 812),
            ),
            GlobalUI(
                text1: "Son Siparişlerim",
                text2: "Sandy Ridge Camping Canton",
                text3: "Sandy Ridge Camping Canton",
                text4: "Sandy Ridge Camping Canton",
                icon: AppImages.red),
            SizedBox(
              height: height * (32 / 812),
            ),
            GlobalUI(
                text1: "Adreslerim",
                text2: "Ev Adresi, Muğla/Menteşe",
                text3: "İş Adresi, Muğla/Menteşe",
                text4: "Adres, Ankara/Yenimahalle",
                icon: AppImages.green),
          ],
        ),
      ),
    );
  }
}
