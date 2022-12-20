import 'package:edtech/widgets/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';

import '../constants/colors.dart';

class ListCollege extends StatelessWidget {
  const ListCollege({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar2(),
      body: ListView(
        children: [
          myCard(context),
          myCard(context),
          myCard(context),
        ],
      ),
      bottomNavigationBar: bottomBar(),
    );
  }

  // AppBar2

  PreferredSize _appBar2() {
    return PreferredSize(
      preferredSize: Size.fromHeight(100),
      child: Container(
        padding: EdgeInsets.only(
          top: 40,
          right: 30,
          left: 30,
        ),
        height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
          color: AppColors.primaryColor,
        ),
        child: Row(
          children: [
            searchBar(),
            voiceSearch(),
          ],
        ),
      ),
    );
  }
}
