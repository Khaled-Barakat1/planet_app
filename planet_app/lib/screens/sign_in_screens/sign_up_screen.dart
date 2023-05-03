import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../components/Info_Input_Field.dart';
import '../../components/coloers.dart';
import '../../components/main_botton.dart';
import '../../root/main_layout.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPage();
}

class _SignUpPage extends State<SignUpPage> {
  bool? onChek = false;
  int i = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        title: const Text(''),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            padding: const EdgeInsets.only(left: 25.0, right: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.08),
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(bottom: 15),
                        child: Text(
                          'Register',
                          style: TextStyle(
                              color: mainColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 35),
                        ),
                      ),
                      Container(
                        child: const Text(
                          'Create a new account',
                          style: TextStyle(color: Colors.black54, fontSize: 17),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.45,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InfoInputField('Username', false, Icons.person),
                      InfoInputField('Email', false, Icons.email),
                      InfoInputField('Password', false, Icons.lock),
                      InfoInputField('Confirm Password', false, Icons.lock),
                      Container(
                          width: MediaQuery.of(context).size.width,
                          margin: const EdgeInsets.only(
                              top: 10, right: 20, left: 20),
                          child: RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                  style: const TextStyle(fontSize: 15),
                                  children: [
                                    TextSpan(
                                        text: 'By sining you agree to our ',
                                        style: TextStyle(
                                            color: mainColor,
                                            fontWeight: FontWeight.bold)),
                                    const TextSpan(
                                        text: 'Tearms of use ',
                                        style: TextStyle(
                                            color: Colors.black54,
                                            fontWeight: FontWeight.bold)),
                                    TextSpan(
                                        text: 'and ',
                                        style: TextStyle(
                                            color: mainColor,
                                            fontWeight: FontWeight.bold)),
                                    const TextSpan(
                                        text: 'privacy notice',
                                        style: TextStyle(
                                            color: Colors.black54,
                                            fontWeight: FontWeight.bold)),
                                  ]))),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                MainButton(goto: const MainLayout(), text: 'Sign Up'),
              ],
            )),
      ),
    );
  }
}
