import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

var _isObsure = true;

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    Orientation orientation = MediaQuery.of(context).orientation;
    print(screenSize);
    return Scaffold(
      body: MyWidget(),
    );
  }
}

class MyWidget extends StatelessWidget {
  Widget mobileWidget = Column(children: [
    Expanded(
      flex: 1,
      child: Container(
        height: double.infinity,
        child: Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  SizedBox(height: 120),
                  Container(
                    height: 6,
                    color: Color(0xFFCCCCCC),
                  ),
                  SizedBox(height: 96.2),
                  Container(
                    width: 396.58,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            SizedBox(width: 15.19),
                            SvgPicture.asset(
                              'assets/svg/icon_logo.svg',
                              width: 55.42,
                              height: 52.31,
                            ),
                            SizedBox(width: 11.65),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Audio Frequency',
                                  style: TextStyle(
                                    color: Color(0xFFF5F5F5),
                                    fontSize: 20,
                                  ),
                                ),
                                SizedBox(height: 2),
                                Text(
                                  'Control  System',
                                  style: TextStyle(
                                    color: Color(0xFF7E8A94),
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(height: 20.78),
                        Container(
                          width: 396.58,
                          height: 349.62,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(42, 33, 42, 43),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '欢迎回来，请登录您的帐户',
                                  style: TextStyle(
                                      color: Color(0xFFA5A6AD), fontSize: 16),
                                ),
                                SizedBox(height: 23.66),
                                TextFormField(
                                  decoration: InputDecoration(
                                    label: Text(
                                      '账号',
                                      style: TextStyle(
                                          color: Color(0xFFBBBBBB),
                                          fontSize: 16),
                                    ),
                                    hintText: '请输入账号',
                                  ),
                                ),
                                SizedBox(height: 38),
                                TextFormField(
                                  obscureText: _isObsure,
                                  inputFormatters: [
                                    FilteringTextInputFormatter(
                                      RegExp("^[a-z0-9A-Z]+"),
                                      allow: true,
                                    ),
                                  ],
                                  decoration: InputDecoration(
                                      label: Text(
                                        '密码',
                                        style: TextStyle(
                                            color: Color(0xFFBBBBBB),
                                            fontSize: 16),
                                      ),
                                      hintText: '请输入密码',
                                      suffixIcon: IconButton(
                                        onPressed: () {
                                          // setState(() {
                                          //   _isObsure = !_isObsure;
                                          // });
                                        },
                                        icon: Icon(
                                          _isObsure
                                              ? Icons.remove_red_eye
                                              : Icons.visibility_off,
                                        ),
                                      )),
                                ),
                              ],
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(4)),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
        color: Color(0xFF061E33),
      ),
    ),
  ]);
  Widget tabletWidget = Column(children: [
    Expanded(
      flex: 1,
      child: Container(
        height: double.infinity,
        child: Row(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 396.58,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            SizedBox(width: 15.19),
                            SvgPicture.asset(
                              'assets/svg/icon_logo.svg',
                              width: 55.42,
                              height: 52.31,
                            ),
                            SizedBox(width: 11.65),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Audio Frequency',
                                  style: TextStyle(
                                    color: Color(0xFFF5F5F5),
                                    fontSize: 20,
                                  ),
                                ),
                                SizedBox(height: 2),
                                Text(
                                  'Control  System',
                                  style: TextStyle(
                                    color: Color(0xFF7E8A94),
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(height: 20.78),
                        Container(
                          width: 396.58,
                          height: 349.62,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(42, 33, 42, 43),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '欢迎回来，请登录您的帐户',
                                  style: TextStyle(
                                      color: Color(0xFFA5A6AD), fontSize: 16),
                                ),
                                SizedBox(height: 23.66),
                                TextFormField(
                                  decoration: InputDecoration(
                                    label: Text(
                                      '账号',
                                      style: TextStyle(
                                          color: Color(0xFFBBBBBB),
                                          fontSize: 16),
                                    ),
                                    hintText: '请输入账号',
                                  ),
                                ),
                                SizedBox(height: 38),
                                TextFormField(
                                  obscureText: _isObsure,
                                  inputFormatters: [
                                    FilteringTextInputFormatter(
                                      RegExp("^[a-z0-9A-Z]+"),
                                      allow: true,
                                    ),
                                  ],
                                  decoration: InputDecoration(
                                      label: Text(
                                        '密码',
                                        style: TextStyle(
                                            color: Color(0xFFBBBBBB),
                                            fontSize: 16),
                                      ),
                                      hintText: '请输入密码',
                                      suffixIcon: IconButton(
                                        onPressed: () {
                                          // setState(() {
                                          //   _isObsure = !_isObsure;
                                          // });
                                        },
                                        icon: Icon(
                                          _isObsure
                                              ? Icons.remove_red_eye
                                              : Icons.visibility_off,
                                        ),
                                      )),
                                ),
                              ],
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(4)),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
        color: Color(0xFF061E33),
      ),
    ),
  ]);
  Widget desktopWidget = Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Expanded(
        flex: 3,
        child: Container(
          // color: Color(0xFFFFFFFF),
          child: SvgPicture.asset(
            'assets/svg/img.svg',
            height: double.infinity,
            fit: BoxFit.fill,
          ),
        ),
      ),
      Expanded(
        flex: 2,
        child: Container(
          height: double.infinity,
          child: Row(
            children: [
              Container(
                width: 10,
                color: Color(0xFF182E42),
              ),
              Expanded(
                child: Column(
                  children: [
                    SizedBox(height: 120),
                    Container(
                      height: 6,
                      color: Color(0xFFCCCCCC),
                    ),
                    SizedBox(height: 96.2),
                    Container(
                      width: 396.58,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              SizedBox(width: 15.19),
                              SvgPicture.asset(
                                'assets/svg/icon_logo.svg',
                                width: 55.42,
                                height: 52.31,
                              ),
                              SizedBox(width: 11.65),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Audio Frequency',
                                    style: TextStyle(
                                      color: Color(0xFFF5F5F5),
                                      fontSize: 20,
                                    ),
                                  ),
                                  SizedBox(height: 2),
                                  Text(
                                    'Control  System',
                                    style: TextStyle(
                                      color: Color(0xFF7E8A94),
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                          SizedBox(height: 20.78),
                          Container(
                            width: 396.58,
                            height: 349.62,
                            child: Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(42, 33, 42, 43),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '欢迎回来，请登录您的帐户',
                                    style: TextStyle(
                                        color: Color(0xFFA5A6AD), fontSize: 16),
                                  ),
                                  SizedBox(height: 23.66),
                                  TextFormField(
                                    decoration: InputDecoration(
                                      label: Text(
                                        '账号',
                                        style: TextStyle(
                                            color: Color(0xFFBBBBBB),
                                            fontSize: 16),
                                      ),
                                      hintText: '请输入账号',
                                    ),
                                  ),
                                  SizedBox(height: 38),
                                  TextFormField(
                                    obscureText: _isObsure,
                                    inputFormatters: [
                                      FilteringTextInputFormatter(
                                        RegExp("^[a-z0-9A-Z]+"),
                                        allow: true,
                                      ),
                                    ],
                                    decoration: InputDecoration(
                                        label: Text(
                                          '密码',
                                          style: TextStyle(
                                              color: Color(0xFFBBBBBB),
                                              fontSize: 16),
                                        ),
                                        hintText: '请输入密码',
                                        suffixIcon: IconButton(
                                          onPressed: () {
                                            // setState(() {
                                            //   _isObsure = !_isObsure;
                                            // });
                                          },
                                          icon: Icon(
                                            _isObsure
                                                ? Icons.remove_red_eye
                                                : Icons.visibility_off,
                                          ),
                                        )),
                                  ),
                                ],
                              ),
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(4)),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          color: Color(0xFF061E33),
        ),
      )
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: mobileWidget,
      tablet: tabletWidget,
      desktop: desktopWidget,
    );
  }
}

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;
  const Responsive({
    Key? key,
    required this.desktop,
    required this.mobile,
    required this.tablet,
  }) : super(key: key);

  /// mobile < 650
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 650;

  /// tablet >= 650
  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width >= 650;

  ///desktop >= 1100
  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1100;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth >= 1100) {
        return desktop;
      } else if (constraints.maxWidth >= 650) {
        return tablet;
      } else {
        return mobile;
      }
    });
  }
}
