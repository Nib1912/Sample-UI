import 'package:ionicons/ionicons.dart';
import 'package:flutter/material.dart';
import 'package:ui/time_widget_text_field.dart';
import 'constants.dart';
import 'text_and_avatar.dart';
import 'reusable_text_field.dart';
import 'time_widget_text_field.dart';
import 'category_generator.dart';

enum Category {
  marketing,
  meeting,
  dev,
  mobile,
  ui_design,
  html,
  graphic_design,
  android,
  ios,
  magneto,
  seo
}

class ThirdScreen extends StatefulWidget {
  @override
  _ThirdScreenState createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  Category? selectedCategory;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          child: Icon(Ionicons.arrow_back_outline),
          onTap: () {
            print('Back button pressed');
          },
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: GestureDetector(
              child: Icon(Ionicons.search),
              onTap: () {},
            ),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.only(
          left: 25.0,
          right: 25,
          // top: 10,
        ),
        children: [
          TextAndAvatar(),
          ReusableTextField(
            label: 'Title',
            minimumLines: 1,
            maximumLines: 1,
          ),
          ReusableTextField(
            label: 'Date',
            minimumLines: 1,
            maximumLines: 1,
          ),
          TimeWidgetTextField(),
          ReusableTextField(
            label: 'Description',
            type: TextInputType.multiline,
            maximumLines: 4,
            minimumLines: 1,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Categories',
              style: TextStyle(color: Colors.grey),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: GestureDetector(
                  onTap: () {
                    print('pressed');
                    setState(() {
                      selectedCategory = Category.marketing;
                    });
                  },
                  child: CategoryGenerator(
                    txtColor:selectedCategory == Category.marketing
                        ? kActiveTextColor
                        : kInActiveTextColor,
                    categoryText: 'Marketing',
                    clr: selectedCategory == Category.marketing
                        ? kActiveColor
                        : kInactiveColor,
                  ),
                ),
              ),
              Flexible(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedCategory = Category.meeting;
                    });
                  },
                  child: CategoryGenerator(
                    txtColor:selectedCategory == Category.meeting
                        ? kActiveTextColor
                        : kInActiveTextColor,
                    categoryText: 'Meeting',
                    clr: selectedCategory == Category.meeting
                        ? kActiveColor
                        : kInactiveColor,
                  ),
                ),
              ),
              Flexible(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedCategory = Category.dev;
                    });
                  },
                  child: CategoryGenerator(
                    txtColor:selectedCategory == Category.dev
                        ? kActiveTextColor
                        : kInActiveTextColor,
                    categoryText: 'Dev',
                    clr: selectedCategory == Category.dev
                        ? kActiveColor
                        : kInactiveColor,
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedCategory = Category.mobile;
                    });
                  },
                  child: CategoryGenerator(
                    txtColor:selectedCategory == Category.mobile
                        ? kActiveTextColor
                        : kInActiveTextColor,
                    categoryText: 'Mobile',
                    clr: selectedCategory == Category.mobile
                        ? kActiveColor
                        : kInactiveColor,
                  ),
                ),
              ),
              Flexible(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedCategory = Category.ui_design;
                    });
                  },
                  child: CategoryGenerator(
                    txtColor:selectedCategory == Category.ui_design
                        ? kActiveTextColor
                        : kInActiveTextColor,
                    categoryText: 'Ui Design',
                    clr: selectedCategory == Category.ui_design
                        ? kActiveColor
                        : kInactiveColor,
                  ),
                ),
              ),
              Flexible(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedCategory = Category.html;
                    });
                  },
                  child: CategoryGenerator(
                    txtColor:selectedCategory == Category.html
                        ? kActiveTextColor
                        : kInActiveTextColor,
                    categoryText: 'HTML',
                    clr: selectedCategory == Category.html
                        ? kActiveColor
                        : kInactiveColor,
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedCategory = Category.graphic_design;
                    });
                  },
                  child: CategoryGenerator(
                    txtColor:selectedCategory == Category.graphic_design
                        ? kActiveTextColor
                        : kInActiveTextColor,
                    categoryText: 'Graphic Design',
                    clr: selectedCategory == Category.graphic_design
                        ? kActiveColor
                        : kInactiveColor,
                  ),
                ),
              ),
              Flexible(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedCategory = Category.android;
                    });
                  },
                  child: CategoryGenerator(
                    txtColor:selectedCategory == Category.android
                        ? kActiveTextColor
                        : kInActiveTextColor,
                    categoryText: 'Android App',
                    clr: selectedCategory == Category.android
                        ? kActiveColor
                        : kInactiveColor,
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedCategory = Category.ios;
                    });
                  },
                  child: CategoryGenerator(
                    txtColor:selectedCategory == Category.ios
                        ? kActiveTextColor
                        : kInActiveTextColor,
                    categoryText: 'IOS App',
                    clr: selectedCategory == Category.ios
                        ? kActiveColor
                        : kInactiveColor,
                  ),
                ),
              ),
              Flexible(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedCategory = Category.magneto;
                    });
                  },
                  child: CategoryGenerator(
                    txtColor:selectedCategory == Category.magneto
                        ? kActiveTextColor
                        : kInActiveTextColor,
                    categoryText: 'Magneto',
                    clr: selectedCategory == Category.magneto
                        ? kActiveColor
                        : kInactiveColor,
                  ),
                ),
              ),
              Flexible(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedCategory = Category.seo;
                    });
                  },
                  child: CategoryGenerator(
                    txtColor:selectedCategory == Category.seo
                        ? kActiveTextColor
                        : kInActiveTextColor,
                    categoryText: 'SEO',
                    clr: selectedCategory == Category.seo
                        ? kActiveColor
                        : kInactiveColor,
                  ),
                ),
              ),
            ],
          ),
          BottomButton()
        ],
      ),
    );
  }
}

class BottomButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 35, right: 35),
      child: GestureDetector(
        onTap: () {
          print('Button Pressed');
        },
        child: Container(
          margin: EdgeInsets.all(22),
          height: 50,
          decoration: BoxDecoration(
              color: Colors.deepPurpleAccent.shade700,
              borderRadius: BorderRadius.circular(15)),
          child: Center(
            child: Text(
              'Create New Task',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
