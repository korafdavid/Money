import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 21,
      child: Row(
        children: [
         Align(
           alignment: Alignment.topLeft,
           child: Image.asset('assets/images/path3.png', height: 8)),
          Image.asset('assets/images/path2.png', height: 15),
           Image.asset('assets/images/path1.png', height: 15),
        ],
      ),
    );
  }
}