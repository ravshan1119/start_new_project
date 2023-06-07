import 'package:flutter/material.dart';
import 'package:start_new_project/ui/auth/login/log_in_screen.dart';
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
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: LogInScreen(),
      ),
    );
  }
}
