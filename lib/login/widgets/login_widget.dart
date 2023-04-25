import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ip_broadcast_web/login/components/home_screen.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  var _isObscure = true;
  var isRemember = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 396.58,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          loginLogo(),
          const SizedBox(height: 20.78),
          Container(
            width: 396.58,
            height: 349.62,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(4)),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(42, 33, 42, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    '欢迎回来，请登录您的帐户',
                    style: TextStyle(color: Color(0xFFA5A6AD), fontSize: 16),
                  ),
                  const SizedBox(height: 20),
                  accountInputBox(),
                  const SizedBox(height: 30),
                  pwdInputBox(),
                  const SizedBox(height: 15),
                  rememberPwd(),
                  const SizedBox(height: 15),
                  loginBtn()
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  //LogoAnd品牌信息
  Widget loginLogo() {
    return Row(
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
    );
  }

  //账号输入框
  Widget accountInputBox() {
    return TextFormField(
      decoration: const InputDecoration(
        label: Text(
          '账号',
          style: TextStyle(color: Color(0xFFBBBBBB), fontSize: 16),
        ),
        hintText: '请输入账号',
        hintStyle: TextStyle(color: Color(0xFFBBBBBB)),
      ),
    );
  }

  //密码输入框
  Widget pwdInputBox() {
    return TextFormField(
      obscureText: _isObscure,
      inputFormatters: [
        FilteringTextInputFormatter(
          RegExp("^[a-z0-9A-Z]+"),
          allow: true,
        ),
      ],
      decoration: InputDecoration(
          label: const Text(
            '密码',
            style: TextStyle(color: Color(0xFFBBBBBB), fontSize: 16),
          ),
          hintStyle: const TextStyle(color: Color(0xFFBBBBBB)),
          hintText: '请输入密码',
          suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                _isObscure = !_isObscure;
              });
            },
            icon: Icon(
              _isObscure ? Icons.remove_red_eye : Icons.visibility_off,
            ),
          )),
    );
  }

  //记住密码
  Widget rememberPwd() {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        Checkbox(
          activeColor: const Color(0xFF2979FF),
          hoverColor: Colors.transparent,
          value: isRemember,
          onChanged: (value) {
            setState(() {
              isRemember = !isRemember;
            });
          },
        ),
        const Text(
          '记住密码',
          style: TextStyle(color: Colors.black87),
        ),
      ],
    );
  }

  //登录按钮
  Widget loginBtn() {
    return Container(
      width: double.infinity,
      height: 40,
      decoration: BoxDecoration(
          color: Colors.blueAccent,
          borderRadius: BorderRadius.circular(4),
          gradient: const LinearGradient(colors: [
            Color(0xFF2979FF),
            Color(0xFF82B1FF),
          ])),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const HomeScreen()),
          );
        },
        style: ButtonStyle(
          //去除阴影
          elevation: MaterialStateProperty.all(0),
          //将按钮背景设置为透明
          backgroundColor: MaterialStateProperty.all(Colors.transparent),
        ),
        child: const Text(
          'Login',
          style: TextStyle(color: Colors.white, fontSize: 14),
        ),
      ),
    );
  }
}
