import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../widgets/logo_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 220,
        height: double.infinity,
        color: const Color(0xFF061E33),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const LogoWidget(),
              ListTile(
                leading: SvgPicture.asset(
                  'assets/svg/nav_icon_play.svg',
                ),
                title: const Text(
                  '首页',
                  style: TextStyle(color: Color(0xFFC9C9C9)),
                ),
              ),
              ListTile(
                leading: SvgPicture.asset(
                  'assets/svg/nav_icon_play.svg',
                ),
                title: const Text(
                  '播放策略',
                  style: TextStyle(color: Color(0xFFC9C9C9)),
                ),
              ),
              ListTile(
                leading: SvgPicture.asset(
                  'assets/svg/nav_icon_play.svg',
                ),
                title: const Text(
                  '设备管理',
                  style: TextStyle(color: Color(0xFFC9C9C9)),
                ),
              ),
              ListTile(
                leading: SvgPicture.asset(
                  'assets/svg/nav_icon_play.svg',
                ),
                title: const Text(
                  '首页',
                  style: TextStyle(color: Color(0xFFC9C9C9)),
                ),
              ),
              ListTile(
                leading: SvgPicture.asset(
                  'assets/svg/nav_icon_play.svg',
                ),
                title: const Text(
                  '播放策略',
                  style: TextStyle(color: Color(0xFFC9C9C9)),
                ),
              ),
              ListTile(
                leading: SvgPicture.asset(
                  'assets/svg/nav_icon_play.svg',
                ),
                title: const Text(
                  '设备管理',
                  style: TextStyle(color: Color(0xFFC9C9C9)),
                ),
              ),
              ListTile(
                leading: SvgPicture.asset(
                  'assets/svg/nav_icon_play.svg',
                ),
                title: const Text(
                  '首页',
                  style: TextStyle(color: Color(0xFFC9C9C9)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
