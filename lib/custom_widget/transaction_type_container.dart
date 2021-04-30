import 'package:flutter/material.dart';

class TransactionTypeContainer extends StatelessWidget {
  final String value;
  final double marginLeft;

  const TransactionTypeContainer({Key key, this.value, this.marginLeft = 0.0})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 46,
        margin: EdgeInsets.only(left: marginLeft),
        padding: EdgeInsets.all(10.0),
        child: Text(
          value,
          textAlign: TextAlign.center,
        ),
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(30.0),
        ),
      ),
    );
  }
}
