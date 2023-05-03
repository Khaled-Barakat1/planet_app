import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'coloers.dart';

class MainButton extends StatelessWidget {
  MainButton({
    super.key,
    this.goto,
    this.text,
  });

  Widget? goto;
  String? text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
            backgroundColor: MaterialStateProperty.all<Color>(mainColor),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ))),
        onPressed: () async {
          SharedPreferences sharedPreferences =
              await SharedPreferences.getInstance();
          sharedPreferences.setBool("isLogin", true);
          Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) => goto!,
          ));
        },
        child: Text(
          text!,
          style: const TextStyle(fontWeight: FontWeight.normal, fontSize: 15),
        ),
      ),
    );
  }
}
