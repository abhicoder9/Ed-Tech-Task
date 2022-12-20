import 'package:edtech/widgets/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';

import '../constants/colors.dart';

class College extends StatelessWidget {
  const College({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar3(context),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: AppColors.primaryColor,
            automaticallyImplyLeading: false,
            expandedHeight: MediaQuery.of(context).size.height * 0.420,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: collegeCard(),
              title: Text(
                title1,
                style: TextStyle(fontSize: 20),
              ),
              titlePadding: EdgeInsets.only(
                bottom: 20,
                left: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }

  AppBar _appBar3(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.primaryColor,
      elevation: 0,
      automaticallyImplyLeading: false,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          backButtton(context),
          saveButton(context),
        ],
      ),
    );
  }
}
