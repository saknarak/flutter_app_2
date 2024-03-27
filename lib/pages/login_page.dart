import 'package:flutter/material.dart';
import 'package:flutter_app_2/pages/home_page.dart';
import 'package:go_router/go_router.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final userCtrl = TextEditingController(text: '');
  final userFocus = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          top: 50,
          bottom: 50,
          left: 20,
          right: 20,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                print('logo tapped');
              },
              onLongPress: () {
                print('logo long pressed');
              },
              child: Image.asset('assets/logo/logo.png'),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: TextField(
                controller: userCtrl,
                focusNode: userFocus,
                decoration: InputDecoration(
                  label: Text('ชื่อผู้ใช้'),
                  icon: const Icon(Icons.face),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 16),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  label: Text('รหัสผ่าน'),
                ),
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  width: 160,
                  child: OutlinedButton(
                    onPressed: () {},
                    child: const Row(
                      children: [
                        Icon(Icons.face),
                        Text('ลงทะเบียน'),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                SizedBox(
                  width: 120,
                  child: FilledButton(
                    onPressed: () {
                      doLogin(context);
                    },
                    child: const Text('เข้าสู่ระบบ'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  doLogin(BuildContext context) {
    print('user=${userCtrl.text}');
    if (userCtrl.text == '') {
      userFocus.requestFocus();
      return;
    }
    // if (passCtrl.text == '') {
    //   passFocus.requestFocus();
    // }
    userCtrl.text = '';
    context.go('/home');
    // context.go('');
    // Navigator.push(
    //   context,
    //   MaterialPageRoute(
    //     builder: (context) => const HomePage(),
    //   ),
    // );
    // Navigator.pushAndRemoveUntil(
    //   context,
    //   MaterialPageRoute(
    //     builder: (context) => const HomePage(),
    //   ),
    //   (route) => false,
    // );
  }
}
