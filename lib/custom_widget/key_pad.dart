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
    return MaterialButton(
        padding: EdgeInsets.all(0.0),
        onPressed: onPress,
        child: Text(
          value,
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
        ));
  }
}
