import 'package:bmw/screens/home_screen_desktop.dart';
import 'package:bmw/widget/responsive.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Responsive(
      desktop: HomeScreenDesktop(),
      mobile: null,
    );
  }
}
