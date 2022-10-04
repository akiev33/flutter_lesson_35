import 'package:flutter/material.dart';
import 'package:flutter_lesson_35/images/resources.dart';
import 'package:flutter_lesson_35/theme/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: AppColors.color22A2BD,
        unselectedItemColor: AppColors.colorBDBDBD,
        type: BottomNavigationBarType.fixed,
        currentIndex: _index,
        onTap: (index) {
          _index = index;
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(
            label: 'Персонажи',
            icon: Image.asset(
              Images.ghost,
              scale: 4,
              color: _index == 0 ? Color(0xff22A2BD) : Color(0xffBDBDBD),
            ),
          ),
          BottomNavigationBarItem(
            label: 'Локациии',
            icon: Image.asset(
              Images.planet,
              scale: 4,
              color: _index == 1 ? Color(0xff22A2BD) : Color(0xffBDBDBD),
            ),
          ),
          BottomNavigationBarItem(
            label: 'Эпизоды',
            icon: Image.asset(
              Images.tv,
              scale: 4,
              color: _index == 2 ? Color(0xff22A2BD) : Color(0xffBDBDBD),
            ),
          ),
          BottomNavigationBarItem(
            label: 'Настройки',
            icon: Image.asset(
              Images.setting,
              scale: 4,
              color: _index == 3 ? Color(0xff22A2BD) : Color(0xffBDBDBD),
            ),
          ),
        ],
      ),
    );
  }
}
