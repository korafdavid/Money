import 'package:flutter/material.dart';
import 'package:meneey_ui/main.dart';
import 'package:meneey_ui/widgets/custom_logo.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
          height: 80,
          decoration:  BoxDecoration(
            color: Colors.purple[300],
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(32),
                bottomRight: Radius.circular(32)),
          ),
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            Logo(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [
                Badge(
                    child: Icon(Icons.mail, color: Colors.white, size: 31),
                    value: '29',
                    color: customYellow,
                    top: 0,
                    right: 0),
                Badge(
                    child: Icon(Icons.notifications, size: 31, color: Colors.white),
                    value: '29',
                    color: customYellow,
                    top: 0,
                    right: 0),
              ],
            ),
            Image.asset('assets/images/image1.png', height: 50),
          ])),
    );
  }
}




class Badge extends StatefulWidget {
  final double top;
  final double right;
  final Widget child; // our Badge widget will wrap this child widget
  final String value; // what displays inside the badge
  final Color color; // the  background color of the badge - default is red

  const Badge(
      {Key? key,
      required this.child,
      required this.value,
      required this.color,
      required this.top,
      required this.right})
      : super(key: key);

  @override
  _BadgeState createState() => _BadgeState();
}

class _BadgeState extends State<Badge> {
  @override
  Widget build(BuildContext context) {
    int numval = int.parse(widget.value);
    return Stack(
      alignment: Alignment.center,
      children: [
        widget.child,
        Positioned(
          right: widget.right,
          top: widget.top,
          child: Container(
            padding: const EdgeInsets.all(2.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: numval == 0 ? Colors.transparent : widget.color,
            ),
            constraints: const BoxConstraints(
              minWidth: 18,
              minHeight: 18,
            ),
            child: Text(
              widget.value,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: numval == 0 ? Colors.transparent : Colors.white,
                fontSize: 13,
              ),
            ),
          ),
        )
      ],
    );
  }
}