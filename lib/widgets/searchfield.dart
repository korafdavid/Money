import 'package:flutter/material.dart';
import 'package:meneey_ui/custom_widgets.dart';
import 'package:meneey_ui/main.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IgnorePointer(
          child: Container(
            margin: const EdgeInsets.all(14),
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                      color: Colors.grey, blurRadius: 2.0, spreadRadius: 0.4)
                ],
                borderRadius: BorderRadius.circular(10)),
            child: TextFormField(
              decoration: InputDecoration(
                  isDense: true,
                  filled: true,
                  fillColor: Colors.white,
                  //  prefixIcon: InkWell(
                  //      onTap: () => menuDialog(context),
                  //       child: Icon(Icons.menu_rounded, color: Colors.grey)),
                  suffixIcon:
                      InkWell(child: Icon(Icons.search, color: customYellow)),
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(25))),
            ),
          ),
        ),
        Positioned(
          left: 40,
          top: 30,
          child: InkWell(
              onTap: () => menuDialog(context),
              child: Icon(Icons.menu_rounded, color: Colors.grey)),
        ),
        Positioned(
          left: 100,
          top: 17,
          child: Container(
              margin: EdgeInsets.all(9),
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(14)),
              child: Text('Social',
                  style: TextStyle(color: Colors.white, fontSize: 12))),
        ),
        Positioned(
          right: 80,
          top: 17,
          child: Container(
              margin: EdgeInsets.all(9),
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.circular(14)),
              child: Text('Business',
                  style: TextStyle(color: Colors.white, fontSize: 12))),
        )
      ],
    );
  }
}
