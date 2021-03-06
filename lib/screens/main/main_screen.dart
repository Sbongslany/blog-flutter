import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:news/constants.dart';
import 'package:news/screens/home/home_screen.dart';

import 'components/header.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(),
            Container(
              padding: EdgeInsets.all(kDefaultPadding),
              constraints: BoxConstraints(maxHeight: kMaxWidth),
              child: HomeScreen(),
            )
          ],
        ),
      ),
    );
  }
}
