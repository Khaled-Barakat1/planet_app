import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'coloers.dart';

class MainIconButton extends StatelessWidget {
  MainIconButton({super.key, this.icon, this.iconSize});
  IconData? icon;
  double? iconSize;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        shape: CircleBorder(),
        backgroundColor: mainColor,
      ),
      child: Icon(
        icon,
        color: Colors.white,
        size: iconSize,
      ),
    );
  }
}
