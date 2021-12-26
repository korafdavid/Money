import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:meneey_ui/custom_widgets.dart';
import 'package:meneey_ui/widgets/custom_appbar.dart';
import 'package:meneey_ui/widgets/searchfield.dart';
import 'package:meneey_ui/widgets/suggestions_tab.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: const PreferredSize(
            preferredSize: Size.fromHeight(300), child: CustomAppBar()),
        body: DefaultTabController(
          length: 4,
          child: ListView(
            shrinkWrap: true,
            children: [
              const SearchTextField(),
              SizedBox(
                height: 45,
                child: Row(
                  children: [
                    Expanded(
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
                          Tab(text: 'All listing'),
                          Tab(text: 'Products'),
                          Tab(text: 'Services'),
                          Tab(text: 'Jobs')
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: InkWell(
                        onTap: () => filterDialog(context),
                        child: Ink(
                          padding: EdgeInsets.all(4),
                            decoration: const ShapeDecoration(
                                shape: CircleBorder(), color: Colors.purple),
                            child: const Icon(Icons.filter_alt_outlined,
                            size: 15,
                                color: Colors.white)),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 500,
                child: TabBarView(controller: _tabController, children: [
                  ListView(
                    children: [
                      SizedBox(
                        height: 360,
                        child: ListView.builder(
                            itemCount: 5,
                            shrinkWrap: true,
                            physics: const ClampingScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Slides());
                            }),
                      ),
                      Suggestions()
                    ],
                  ),
                  Center(child: Text('Products')),
                  Center(child: Text('Services')),
                  Center(child: Text('Jobs'))
                ]),
              ),
            ],
          ),
        ));
  }
}
