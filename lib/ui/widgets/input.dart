import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:start_new_project/utils/app_images.dart';

import '../../utils/app_colors.dart';

class UniversalInput extends StatelessWidget {
  UniversalInput({
    Key? key,
    required this.hintText,
    required this.type,
    this.isPassword = false,
    required this.prefix,
    this.isSuffix = false,
  }) : super(key: key);

  final String hintText;
  final TextInputType type;
  final String prefix;
  bool isSuffix;
  bool isPassword;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: height * (56 / 812),
          decoration: BoxDecoration(
              color: AppColors.C_22222A,
              borderRadius: BorderRadius.circular(10)),
          child: TextField(
            obscureText: isPassword,
            textInputAction: TextInputAction.done,
            cursorColor: AppColors.white,
            cursorHeight: 20,
            cursorWidth: 1.5,
            keyboardType: type,
            onChanged: (value) {
              print("CURRENT VALUE:$value");
            },
            onSubmitted: (value) {
              print("SUBMITTED VALUE:$value");
            },
            style: const TextStyle(
              fontSize: 16,
              color: AppColors.white,
              fontFamily: "Poppins",
            ),
            decoration: InputDecoration(
              suffixIcon: isSuffix
                  ? Padding(
                      padding:
                          const EdgeInsets.only(top: 18, bottom: 18, right: 15),
                      child: SvgPicture.asset(AppImages.eye),
                    )
                  : const SizedBox(
                      height: 10,
                      width: 10,
                    ),
              prefixIcon: Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 16, left: 11),
                child: SvgPicture.asset(prefix),
              ),
              hintText: hintText,
              hintStyle: const TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: AppColors.white,
                fontFamily: "Poppins",
              ),
              fillColor: Colors.red,
              contentPadding: const EdgeInsets.symmetric(
                vertical: 8,
                horizontal: 16,
              ),
              // errorText: "Error",
              // enabled: false,
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: AppColors.C_22222A)),
              disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: AppColors.C_22222A)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: AppColors.C_22222A)),
              errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: AppColors.C_22222A)),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: AppColors.C_22222A)),
            ),
          ),
        ),
      ],
    );
  }
}
