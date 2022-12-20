import 'package:edtech/pages/page_colleges.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../constants/colors.dart';
import 'package:flutter_lorem/flutter_lorem.dart';
import '../pages/college.dart';

// College  Custom Widget :

// Back Button

Widget backButtton(BuildContext context) {
  return Container(
    width: 40,
    height: 40,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      color: AppColors.whiteColor,
    ),
    child: IconButton(
      onPressed: () => Navigator.pop(context),
      icon: Icon(Icons.arrow_back),
      iconSize: 20,
      color: AppColors.primaryColor,
    ),
  );
}

// Save Button
Widget saveButton(BuildContext context) {
  return Container(
    width: 40,
    height: 40,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      color: AppColors.whiteColor,
    ),
    child: IconButton(
      onPressed: () => Navigator.pop(context),
      icon: Icon(Icons.save),
      iconSize: 20,
      color: AppColors.primaryColor,
    ),
  );
}

Widget collegeCard() {
  return Card(
    child: Container(
      padding: EdgeInsets.only(
        top: 150,
      ),
      height: 290,
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        image: DecorationImage(
          image: AssetImage('assets/college.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        padding: EdgeInsets.all(20),
        color: AppColors.whiteColor,
        child: Stack(
          children: [
            Text(
              title1,
              style: TextStyle(
                color: AppColors.black,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(
                  top: 40,
                  right: 75,
                ),
                child: Text(
                  lorem(
                    paragraphs: 1,
                    words: 20,
                  ),
                  style: TextStyle(
                    color: AppColors.blackMedium,
                  ),
                ),
              ),
            ),
            Positioned(
              right: 0,
              top: 10,
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: AppColors.lighGreen,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Column(
                  children: [
                    Text('4.3', style: whiteBoldText),
                    SizedBox(height: 5),
                    Icon(
                      Icons.star,
                      color: AppColors.whiteColor,
                      size: 30,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

// Colleges Page Custom Widget

Widget myCard(BuildContext context) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
          context, MaterialPageRoute(builder: ((context) => College())));
    },
    child: Container(
      margin: EdgeInsets.only(
        top: 30,
        right: 40,
        left: 40,
      ),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            blurRadius: 10,
            spreadRadius: 1,
            color: AppColors.blackMedium,
          )
        ],
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(
            'https://picsum.photos/seed/picsum/600/500',
          ),
        ),
      ),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.share,
                    size: 20,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.save,
                    size: 20,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 60,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              color: AppColors.whiteColor,
            ),
            padding: EdgeInsets.all(15),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title1,
                      style: blackBoldText,
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColors.lighGreen,
                      ),
                      child: Row(
                        children: [
                          Text(
                            '4.3',
                            style: TextStyle(
                              color: AppColors.whiteColor,
                              fontSize: 15,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          Icon(
                            Icons.star,
                            color: AppColors.whiteColor,
                            size: 20,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      lorem(words: 10, paragraphs: 2),
                      style: blackText,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        margin: EdgeInsets.only(top: 10),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColors.primaryColor,
                        ),
                        child: Text(
                          'Apply Now',
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w700,
                            color: AppColors.whiteColor,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Divider(
                  color: AppColors.blackLight,
                  thickness: 1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      Icons.badge,
                      size: 20,
                    ),
                    Text('Lorem ipsum sit ammet consecutter ammet',
                        style: blackText),
                    Icon(
                      Icons.remove_red_eye_sharp,
                      size: 20,
                      color: AppColors.blackMedium,
                    ),
                    Text(
                      '468+',
                      style: TextStyle(
                        color: AppColors.blackLight,
                        fontSize: 10,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

// Home Page Custom Widget

Widget bottomBar() {
  return BottomNavigationBar(
    selectedFontSize: 10,
    unselectedFontSize: 10,
    showUnselectedLabels: true,
    unselectedItemColor: Colors.grey[400],
    items: [
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: 'Home',
        backgroundColor: AppColors.primaryColor,
      ),
      BottomNavigationBarItem(icon: Icon(Icons.saved_search), label: 'saved'),
      BottomNavigationBarItem(
          icon: Icon(Icons.save_as_rounded), label: 'saved'),
      BottomNavigationBarItem(icon: Icon(Icons.account_box), label: 'account'),
    ],
  );
}

Widget voiceSearch() {
  return Container(
    margin: EdgeInsets.only(
      left: 15,
    ),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      color: AppColors.whiteColor,
    ),
    child: IconButton(
      onPressed: null,
      icon: Icon(Icons.mic),
    ),
  );
}

Widget searchBar() {
  return Expanded(
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: AppColors.whiteColor,
      ),
      child: SingleChildScrollView(
        child: TextField(
          decoration: InputDecoration(
            border: InputBorder.none,
            prefixIcon: Icon(
              Icons.search,
              color: AppColors.blackLight,
            ),
            hintText: 'Search for colleges, schools...',
            hintStyle: TextStyle(
              fontSize: 13,
              color: AppColors.blackLight,
              fontWeight: FontWeight.w600,
            ),
            prefixIconConstraints: BoxConstraints(
              maxHeight: 20,
              minWidth: 50,
            ),
          ),
        ),
      ),
    ),
  );
}

Widget myCategory(BuildContext context) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ListCollege()),
      );
    },
    child: Padding(
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
      child: Container(
        height: 140,
        padding: EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 20,
        ),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
              'https://picsum.photos/seed/picsum/1000/500',
            ),
          ),
        ),
        child: const ListTile(
          title: Text('Top Colleges', style: whiteBoldText),
          subtitle: Text(
            'Search through thousands of\naccredited colleges and university\nonline to find the right one for you.\nApply in 3 min, and connect with your\nfuture.',
            style: whiteText,
          ),
        ),
      ),
    ),
  );
}

// some custom widgets

const whiteBoldText = TextStyle(
  color: AppColors.whiteColor,
  fontWeight: FontWeight.w800,
  fontSize: 17,
);

const whiteText = TextStyle(
  color: AppColors.whiteColor,
  fontSize: 12,
  fontWeight: FontWeight.w700,
);

const blackText = TextStyle(
  color: AppColors.blackMedium,
  height: 0.5,
  fontSize: 8,
  fontWeight: FontWeight.w700,
);

const blackBoldText = TextStyle(
  color: AppColors.black,
  fontWeight: FontWeight.w500,
  fontSize: 15,
);

// Some Custom Text

String title1 = 'GHJK Engineering College';
String title2 = 'Bachelor of Technology';
String title3 = 'Bachelor of Science';
