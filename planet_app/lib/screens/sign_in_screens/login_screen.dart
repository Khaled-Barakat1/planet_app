import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:planet_app/screens/sign_in_screens/sign_up_screen.dart';
import '../../components/Info_Input_Field.dart';
import '../../components/coloers.dart';
import '../../components/main_botton.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import '../../root/main_layout.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPage();
}

class _LogInPage extends State<LogInPage> {
  bool? onChek = false;
  int i = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        title: Text(''),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ClipPath(
              clipper: WaveClipperTwo(),
              child: Container(
                height: MediaQuery.of(context).size.width * 0.7,
                width: MediaQuery.of(context).size.width,
                child: const Image(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'assets/leaves.jpg',
                  ),
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height -
                  MediaQuery.of(context).size.width * 0.7,
              padding: const EdgeInsets.only(left: 25.0, right: 25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Text(
                          'Welcom Back',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 35,
                              color: mainColor),
                        ),
                      ),
                      Container(
                        child: const Text(
                          'Login to your account',
                          style: TextStyle(color: Colors.black54),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InfoInputField('Full Name', false, Icons.person),
                      const SizedBox(
                        height: 15,
                      ),
                      InfoInputField('Password', true, Icons.lock),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Checkbox(
                                activeColor: mainColor,
                                checkColor: Colors.white,
                                value: onChek,
                                onChanged: (bool? value) {
                                  setState(() {
                                    onChek = value!;
                                  });
                                },
                              ),
                              Container(
                                  child: const Text(
                                'Remember me',
                                style: TextStyle(color: Colors.black54),
                              )),
                            ],
                          ),
                          Container(
                              child: Text(
                            'Forgot Password?',
                            style: TextStyle(color: mainColor),
                          )),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MainButton(goto: const MainLayout(), text: 'Login'),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Dont have an account?',
                            style: TextStyle(
                                fontWeight: FontWeight.normal, fontSize: 15),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => SignUpPage(),
                              ));
                            },
                            child: Text(
                              'Sign Up',
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 15,
                                color: mainColor,
                              ),
                            ),
                          )
                        ],
                      ),
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
}
