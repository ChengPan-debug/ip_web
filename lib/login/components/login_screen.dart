import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ip_broadcast_web/login/components/login_screen.dart';
import 'package:ip_broadcast_web/login/responsive.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

var _isObsure = true;

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
        child: SingleChildScrollView(
          child: Expanded (
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
                ),
                SizedBox(height: 120),
              ],
            ),
          ),
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
                        ),

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
              Container(
                width: 10,
                color: const Color(0xFF182E42),
              ),
              Expanded(
                child: Column(
                  children: [
                    const SizedBox(height: 120),
                    Container(
                      height: 6,
                      color: const Color(0xFFCCCCCC),
                    ),
                    const SizedBox(height: 96.2),
                    SizedBox(
                      width: 396.58,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              const SizedBox(width: 15.19),
                              SvgPicture.asset(
                                'assets/svg/icon_logo.svg',
                                width: 55.42,
                                height: 52.31,
                              ),
                              const SizedBox(width: 11.65),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
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
                          const SizedBox(height: 20.78),
                          Container(
                            width: 396.58,
                            height: 349.62,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(4)),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(42, 33, 42, 43),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    '欢迎回来，请登录您的帐户',
                                    style: TextStyle(
                                        color: Color(0xFFA5A6AD), fontSize: 16),
                                  ),
                                  const SizedBox(height: 23.66),
                                  TextFormField(
                                    decoration: const InputDecoration(
                                      label: Text(
                                        '账号',
                                        style: TextStyle(
                                            color: Color(0xFFBBBBBB),
                                            fontSize: 16),
                                      ),
                                      hintText: '请输入账号',
                                    ),
                                  ),
                                  const SizedBox(height: 38),
                                  TextFormField(
                                    obscureText: _isObsure,
                                    inputFormatters: [
                                      FilteringTextInputFormatter(
                                        RegExp("^[a-z0-9A-Z]+"),
                                        allow: true,
                                      ),
                                    ],
                                    decoration: InputDecoration(
                                        label: const Text(
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
                                  const SizedBox(height: 30),
                                  Center(
                                    child: Container(width: 200,height: 40,alignment:Alignment.center,decoration: BoxDecoration(color: Colors.blue,borderRadius: BorderRadius.circular(20),
                                    ),child: const Text('Login',style: TextStyle(color: Colors.white),),),
                                  ),
                                ],
                              ),
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
    final request = await httpClient.getUrl(Uri.parse('https://example.com/api/data'));
    final response = await request.close();

    // Process the response
  } catch (error) {
    print(error);
  } finally {
    httpClient.close();
  }
}



