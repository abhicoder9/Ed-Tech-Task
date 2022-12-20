import 'package:edtech/widgets/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'constants/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: Column(
              children: [
                myCategory(context),
                myCategory(context),
                myCategory(context),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: bottomBar(),
    );
  }

  // AppBar

  AppBar _appBar() {
    return AppBar(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(30),
        ),
      ),
      titleSpacing: 25,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Find your own way',
            style: whiteBoldText,
          ),
          IconButton(
            onPressed: null,
            icon: Icon(
              Icons.notifications,
              color: AppColors.whiteColor,
            ),
          )
        ],
      ),
      bottom: PreferredSize(
          preferredSize: Size.fromHeight(100),
          child: Container(
            padding: EdgeInsets.only(
              bottom: 30,
              right: 25,
              left: 25,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      'Search in 600 colleges around!',
                      style: whiteText,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    searchBar(),
                    voiceSearch(),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
