import 'package:flutter/material.dart';
import 'package:start_new_project/utils/app_colors.dart';


class GlobalButton extends StatelessWidget {
  const GlobalButton({Key? key, required this.title, required this.onTap})
      : super(key: key);

  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Ink(
        height: 52,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: Colors.white,
        ),
        child: InkWell(
          onTap: onTap,
          child: Center(
            child: Text(
              title,
              style:const TextStyle(
                fontWeight: FontWeight.w600,
                color: AppColors.C_22222A,
                fontSize: 18,
              ),
            ),
          ),
        ),
      ),
    );
  }
}