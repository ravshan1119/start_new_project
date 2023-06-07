import 'package:flutter/material.dart';
import 'package:start_new_project/ui/home/home_screen.dart';
import 'package:start_new_project/ui/widgets/btn.dart';
import 'package:start_new_project/ui/widgets/input.dart';
import 'package:start_new_project/ui/widgets/social.dart';
import 'package:start_new_project/utils/app_colors.dart';
import 'package:start_new_project/utils/app_images.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: UI(),
      ),
    );
  }
}

class UI extends StatelessWidget {
  const UI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Stack(
        children: [
          Image.asset(
            AppImages.backgraundImage,
            height: height,
            width: width,
            fit: BoxFit.cover,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                children: [
                  SizedBox(
                    height: height * (103 / 812),
                  ),
                  Text(
                    "BURGER BAR",
                    style: TextStyle(
                        fontSize: height > 600 ? 52 : 40,
                        fontFamily: "ARCENA",
                        color: AppColors.white),
                  ),
                  SizedBox(
                    height: height * (28 / 812),
                  ),
                  const Text(
                    "Войдите в свой профиль",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                        fontFamily: "Poppins",
                        color: AppColors.white),
                  ),
                  const Text(
                    "Войдите, чтобы продолжить",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      fontFamily: "Poppins",
                      color: AppColors.C_6C7072,
                    ),
                  ),
                  SizedBox(
                    height: height * (48 / 812),
                  ),
                  UniversalInput(
                      prefix: AppImages.send,
                      hintText: "",
                      type: TextInputType.text),
                  SizedBox(
                    height: height * (21 / 812),
                  ),
                  UniversalInput(
                      prefix: AppImages.passwordIcon,
                      hintText: "",
                      isSuffix: true,
                      isPassword: true,
                      type: TextInputType.text),
                  SizedBox(
                    height: height * (33 / 812),
                  ),
                  const Text(
                    "Или продолжите с помощью  ",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Poppins",
                      color: AppColors.white,
                    ),
                  ),
                  SizedBox(
                    height: height * (45 / 812),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Social(icon: AppImages.facebookIcon, text: "Facebook"),
                      Social(icon: AppImages.googleIcon, text: "Google"),
                    ],
                  ),
                  SizedBox(
                    height: height * (44 / 812),
                  ),
                  Text(
                    "Забыли пароль?",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: AppColors.C_E1D24A_1),
                  ),
                  SizedBox(
                    height: height * (32 / 812),
                  ),
                  GlobalButton(
                      title: "Войти",
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return HomeScreen();
                        }));
                      })
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
