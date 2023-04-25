import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ip_broadcast_web/login/responsive.dart';

import '../widgets/login_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyWidget(),
    );
  }
}

// ignore: must_be_immutable
class MyWidget extends StatelessWidget {
  Widget mobileWidget = Column(children: [
    Expanded(
      flex: 1,
      child: Container(
        height: double.infinity,
        color: const Color(0xFF061E33),
        child: SingleChildScrollView(
          child: Expanded(
            child: Column(
              children: [
                const SizedBox(height: 120),
                Container(
                  height: 6,
                  color: const Color(0xFFCCCCCC),
                ),
                const SizedBox(height: 96.2),
                const LoginWidget(),
                const SizedBox(height: 120),
              ],
            ),
          ),
        ),
      ),
    ),
  ]);
  Widget tabletWidget = Column(children: [
    Expanded(
      flex: 1,
      child: Container(
        height: double.infinity,
        color: const Color(0xFF061E33),
        child: Row(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: const [LoginWidget()],
                ),
              ),
            )
          ],
        ),
      ),
    ),
  ]);
  Widget desktopWidget = Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Expanded(
        flex: 3,
        child: SvgPicture.asset(
          'assets/svg/img.svg',
          height: double.infinity,
          fit: BoxFit.fill,
        ),
      ),
      Expanded(
        flex: 2,
        child: Container(
          height: double.infinity,
          color: const Color(0xFF061E33),
          child: Row(
            children: [
              const VerticalDivider(width: 10, color: Color(0xFF182E42)),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(height: 120),
                      Container(height: 6, color: const Color(0xFFCCCCCC)),
                      const SizedBox(height: 96.2),
                      LoginWidget(),
                      const SizedBox(height: 120),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      )
    ],
  );

  MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: mobileWidget,
      tablet: tabletWidget,
      desktop: desktopWidget,
    );
  }
}

Future<void> fetchData() async {
  final httpClient = HttpClient();

  try {
    final request =
        await httpClient.getUrl(Uri.parse('https://example.com/api/data'));
    final response = await request.close();

    // Process the response
  } catch (error) {
    print(error);
  } finally {
    httpClient.close();
  }
}
