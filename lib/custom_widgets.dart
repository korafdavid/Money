import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:meneey_ui/main.dart';



class Slides extends StatefulWidget {
  const Slides({Key? key}) : super(key: key);

  @override
  _SlidesState createState() => _SlidesState();
}

class _SlidesState extends State<Slides> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      width: 300,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(14), topRight: Radius.circular(14)),
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 20, top: 20, right: 10, bottom: 10),
                  child: InkWell(
                      onTap: () {},
                      child: ClipOval(
                          child: Image.asset('assets/images/image1.png',
                              height: 40))),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: InkWell(
                          onTap: () {},
                          child: const Text('Joan Lawson',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                      ),
                      const Align(
                          alignment: Alignment.centerLeft,
                          child: Text('Joana222',
                              style: TextStyle(color: Colors.black))),
                    ],
                  ),
                ),
                Container(
                  child: Text('Services', style: TextStyle(fontSize: 10)),
                  padding: EdgeInsets.all(8),
                  decoration:  BoxDecoration(
                      color: customYellow,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          bottomLeft: Radius.circular(20))),
                )
              ],
            ),
          ),
          Container(
              height: 190,
              alignment: Alignment.bottomCenter,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/image5.png'))),
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Vegetable and Prawns',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18)),
                          Row(
                            children: const [
                              Icon(Icons.location_pin,
                                  color: Colors.white, size: 13),
                              Text('Jamaica',
                                  style: TextStyle(color: Colors.white)),
                            ],
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Row(
                        children: const [
                          Icon(Icons.bookmark_outline,
                              color: Colors.white, size: 29),
                          Icon(Icons.reply,
                              textDirection: TextDirection.rtl,
                              color: Colors.white,
                              size: 29),
                          Icon(Icons.more_vert, color: Colors.white, size: 29),
                        ],
                      ),
                    ),
                  ])),
          Container(
              decoration: BoxDecoration(
                  color: customYellow,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15))),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Text("\$20",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold)),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                          onPressed: () {},
                          child: const Text('Order',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.purple)),
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(22)),
                              primary: Colors.white)),
                    )
                  ]))
        ],
      ),
    );
  }
}



filterDialog(BuildContext context) {
  return showGeneralDialog(
      context: context,
      pageBuilder:
          (BuildContext context, Animation<double> ii, Animation<double> d) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22.0, vertical: 60),
          child: Container(
            margin: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Material(
              color: Colors.transparent,
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                          onTap: () => Navigator.of(context).pop(),
                          child: Ink(
                              decoration: ShapeDecoration(
                                  shape: CircleBorder(), color: Colors.grey),
                              child: Icon(Icons.navigate_before,
                                  color: Colors.white))),
                    ),
                  ),

                  // Align(
                  //   alignment: Alignment.centerLeft,
                  //   child: IconButton(onPressed: ()=>Navigator.of(context).pop() , icon: Icon(Icons.navigate_before),color: Colors.blue)),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text('Filter by',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 25))),
                  ),
                  ListView(
                    shrinkWrap: true,
                    physics: ClampingScrollPhysics(),
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 18, vertical: 8),
                        child: Card(
                            elevation: 8,
                            child: ListTile(
                              dense: true,
                              leading: Text('Sort:',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              title: Text('Best Match'),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 18, vertical: 8),
                        child: Card(
                            elevation: 8,
                            child: ListTile(
                              dense: true,
                              leading: Icon(Icons.star, color: customYellow),
                              title: Text('Rating'),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 18, vertical: 8),
                        child: Card(
                            elevation: 8,
                            child: ListTile(
                              dense: true,
                              leading: Icon(Icons.person, color: customYellow),
                              title: Text('Seller Type'),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 18, vertical: 8),
                        child: Card(
                            elevation: 8,
                            child: ListTile(
                                dense: true,
                                leading: Icon(Icons.location_pin,
                                    color: customYellow),
                                title: Expanded(
                                    child: TextFormField(
                                        style: TextStyle(fontSize: 15),
                                        autofocus: true,
                                        decoration: InputDecoration(
                                            prefix: Text('location',
                                                style: TextStyle(fontSize: 10)),
                                            isDense: true,
                                            filled: true,
                                            fillColor: Colors.grey[200],
                                            border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(23),
                                                borderSide:
                                                    BorderSide.none)))))),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 18, vertical: 8),
                        child: Card(
                            elevation: 8,
                            child: ListTile(
                              dense: true,
                              leading:
                                  Icon(Icons.details, color: customYellow),
                              title: Text('Discount and Deals'),
                              trailing: IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.crop_square)),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 18, vertical: 8),
                        child: Card(
                            elevation: 8,
                            child: ListTile(
                              dense: true,
                              leading: Icon(Icons.people, color: customYellow),
                              title: Text('Refferals'),
                              trailing: IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.check_box)),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 18, vertical: 8),
                        child: Card(
                            elevation: 8,
                            child: ListTile(
                              dense: true,
                              leading: Icon(Icons.timelapse_outlined,
                                  color: customYellow),
                              title: Text('reserve fee'),
                              trailing: IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.check_box)),
                            )),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      });
}

menuDialog(BuildContext context) {
  return showGeneralDialog(
      context: context,
      pageBuilder:
          (BuildContext context, Animation<double> ii, Animation<double> d) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22.0, vertical: 60),
          child: Container(
            margin: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Material(
              color: Colors.transparent,
              child: Column(
                children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: IconButton(
                          onPressed: () => Navigator.of(context).pop(),
                          icon: Icon(Icons.cancel),
                          color: Colors.grey)),
                  ListView(shrinkWrap: true, children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 18, vertical: 8),
                      child: Card(
                          elevation: 8,
                          child: ListTile(
                            dense: true,
                            leading:
                                Icon(Icons.timelapse, color: Colors.purple),
                            title: Text('My Activity'),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 18, vertical: 8),
                      child: Card(
                          elevation: 8,
                          child: ListTile(
                            dense: true,
                            leading: Icon(Icons.bookmark, color: Colors.purple),
                            title: Text('Saved'),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 18, vertical: 8),
                      child: Card(
                          elevation: 8,
                          child: ListTile(
                            dense: true,
                            leading: Icon(Icons.settings, color: Colors.purple),
                            title: Text('Settings'),
                          )),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Divider(thickness: 1),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('My Pages',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 22)),
                        ),
                        Container(
                          margin: EdgeInsets.all(9),
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                color: Colors.purple,
                                borderRadius: BorderRadius.circular(14)),
                            child: Text('Create new',
                                style: TextStyle(color: Colors.white, fontSize: 12))),
                  
                      ],
                    ),
                     Padding(
                       padding: const EdgeInsets.symmetric(horizontal:18, vertical: 6),
                       child: TextField(
                            decoration: InputDecoration(
                                filled: true,
                                prefixIcon: Icon(Icons.search, size: 20),
                                isDense: true,
                                fillColor: Colors.grey[300],
                                border: OutlineInputBorder(
                                  
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(24))),
                          ),
                     ),
                     for(int a = 0; a < 3; a++)
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 18, vertical: 6),
                            decoration: BoxDecoration(
                                color: Colors.purple,
                                borderRadius: BorderRadius.circular(23)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Image.asset(
                                    'assets/images/image3.png',
                                    height: 30
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                  Text('Business name',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white)),
                                  Text('Private seller',
                                      style: TextStyle(color: Colors.white, fontSize: 12))
                                ]),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Material(
                                      color: Colors.transparent,
                                      child: Ink(
                                        padding: EdgeInsets.all(4),
                                          decoration: ShapeDecoration(
                                              shape: CircleBorder(),
                                              color: Colors.purple[200]),
                                          child: Icon(Icons.pin_drop, size: 17,
                                              color: Colors.white)),
                                    ),
                                  
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Material(
                                    color: Colors.transparent,
                                    child: Ink(
                                      padding: EdgeInsets.all(4),
                                        decoration: ShapeDecoration(
                                            shape: CircleBorder(),
                                            color: customYellow),
                                        child: Icon(Icons.edit, size: 17,
                                            color: Colors.white)),
                                  ),
                                ),
                                        ],
                                ),
                              ],
                            ))
                  ]),
                ],
              ),
            ),
          ),
        );
      });
}
