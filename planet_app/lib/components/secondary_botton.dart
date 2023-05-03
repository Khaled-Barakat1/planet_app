import 'package:flutter/material.dart';
import 'coloers.dart';

class SecndBotton extends StatelessWidget {
  SecndBotton({super.key, this.goto, this.child});

  Widget? goto;
  Row? child;

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
              borderRadius: BorderRadius.circular(15),
            ))),
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => goto!,
          ));
        },
        child: child,
      ),
    );
  }
}
