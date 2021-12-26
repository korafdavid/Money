import 'package:flutter/material.dart';
import 'package:meneey_ui/main.dart';


class Suggestions extends StatefulWidget {
  const Suggestions({Key? key}) : super(key: key);

  @override
  _SuggestionsState createState() => _SuggestionsState();
}

class _SuggestionsState extends State<Suggestions>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Column(
          children: [
            SizedBox(
              height: 45,
              child: TabBar(
                controller: _tabController,
                indicator: const BoxDecoration(),
                labelStyle: const TextStyle(
                    fontWeight: FontWeight.bold), //For Selected tab
                unselectedLabelStyle:
                    const TextStyle(fontWeight: FontWeight.normal),
                labelColor: Colors.purple,
                unselectedLabelColor: Colors.black,
                tabs: const [
                  Tab(text: 'Suggested Listings'),
                  Tab(text: 'Suggested Pages'),
                ],
              ),
            ),
            SizedBox(
              height: 270,
              child: TabBarView(
                controller: _tabController, children: [


                 Container(
                    margin: EdgeInsets.symmetric(vertical: 20.0),
                    height: 220.0,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Container(
                              width: 190,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage('assets/images/image6.jpg')
                                      ),
                                      borderRadius: BorderRadius.only(topRight: Radius.circular(14), topLeft: Radius.circular(14))),
                                    height: 150,
                                  ),
                                  // ClipRRect(
                                  //   borderRadius: BorderRadius.only(topRight: Radius.circular(19), topLeft: Radius.circular(19)),
                                  //   child: Image.asset('assets/images/image5.png', height: 150),
                                  // ),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(bottomRight: Radius.circular(14), bottomLeft: Radius.circular(14))),
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: const [
                                          Text('Men\'s Shoes', style: TextStyle(fontWeight: FontWeight.bold)),
                                          Text('Smoothie Stores', style: TextStyle(color: Colors.black)),
                                          Text('25 Orders left', style: TextStyle(color: Colors.black, fontSize: 13)),
                                          ],),
                                          IconButton(
                                            onPressed: (){},
                                            color: Colors.purple,
                                            icon: Icon(Icons.bookmark_outline)
                                          )
                                      ],
                                    )
                                    
                                  ),
                                ],
                              ),
                            ),
                          );
                        })),

                Container(
                    margin: EdgeInsets.symmetric(vertical: 20.0),
                    height: 300,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Container(
                            width: 160.0,
                            margin: EdgeInsets.symmetric(horizontal: 9),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(14)
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 24, bottom: 7),
                                  child: Image.asset('assets/images/image4.png', height: 80),
                                ),
                                Text('Rose Kosoto', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                                Text('Smoothy Store', style: TextStyle(color: Colors.black, fontSize: 13)),
                                 Padding(
                                   padding: const EdgeInsets.all(8.0),
                                   child: ElevatedButton(
                          onPressed: () {},
                          child: const Text('Support',
                              style: TextStyle(
                                    fontWeight: FontWeight.bold)),
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(23)),
                              primary: customYellow,
                              onPrimary: Colors.purple
                              )),
                                 ),
                              ],
                            ),
                          );
                        })),
              ]),
            ),
          ],
        ));
  }
}


