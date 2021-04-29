import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        // mainAxisSize: MainAxisSize.min,
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CircleAvatar(
            radius: 12.5,
            backgroundImage: AssetImage("asset/images/user.png"),
          ),
          Spacer(),
          Container(
            child: Text("N5,000 left"),
            decoration: BoxDecoration(
                color: Color(0xffFBFBFB),
                borderRadius: BorderRadius.circular(8.0)),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
