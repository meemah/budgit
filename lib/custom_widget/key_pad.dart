import 'package:flutter/material.dart';

class KeyPad extends StatelessWidget {
  final String value;
  final Function onPress;
  const KeyPad({
    Key key,
    this.value,
    this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onPress,
        child: Text(
          value,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
        ));
  }
}
