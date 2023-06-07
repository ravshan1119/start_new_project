import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:start_new_project/ui/auth/login/log_in_screen.dart';
import 'package:start_new_project/ui/home/widgets/zakas.dart';
import 'package:start_new_project/utils/app_colors.dart';
import 'package:start_new_project/utils/app_images.dart';

import '../../main.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.C_151418,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 30, left: 16, right: 16),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 44,
                    width: 44,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColors.C_E1D24A_1),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SvgPicture.asset(AppImages.arrowBack),
                    ),
                  ),
                  SizedBox(
                    width: width * (60 / 375),
                  ),
                  Text(
                    "Детали заказа",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                        color: AppColors.white),
                  )
                ],
              ),
              SizedBox(
                height: height * (43 / 812),
              ),
              Zakas(
                  image: AppImages.burger,
                  text: "Чикен Бургер",
                  text2: "Изящный бургер",
                  price: "₽160"),
              Zakas(
                  image: AppImages.free,
                  text: "Картошка Фри",
                  text2: "Хрустят отлично",
                  price: "₽100"),
              Zakas(
                  image: AppImages.disert,
                  text: "Молочный",
                  text2: "Отлично подойдет",
                  price: "₽120"),
            ],
          ),
        ),
      ),
    );
  }
}
