import 'package:basecamp/export.dart';
import 'package:basecamp/page/project/views/video_static_section.dart';
import 'package:flutter/material.dart';


class CustomTabBarProject extends StatefulWidget {
  const CustomTabBarProject({Key? key}) : super(key: key);

  @override
  State<CustomTabBarProject> createState() => _CustomTabBarProjectState();
}

class _CustomTabBarProjectState extends State<CustomTabBarProject> with SingleTickerProviderStateMixin{
  late TabController tabController;
  @override
  void initState() {
    tabController = TabController(length: 7,initialIndex: 0, vsync: this);
    super.initState();
  }
  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Container(
            height: 50,
            color: Colors.transparent,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  width: 950,
                  child: TabBar(
                    controller: tabController,
                    labelStyle: GoogleFonts.montserrat(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                    indicatorWeight: 3.5,
                    labelColor:Colors.white,
                    indicatorColor: const Color(0xffCDFF00),
                    unselectedLabelColor: Colors.grey,
                    tabs: [
                      Tab(text: 'ALL'.toUpperCase()),
                      Tab(text: 'Food'.toUpperCase()),
                      Tab(text: 'Real Estate'.toUpperCase()),
                      Tab(text: 'Health'.toUpperCase()),
                      Tab(text: 'Technology'.toUpperCase()),
                      Tab(text: 'Tourism'.toUpperCase()),
                      Tab(text: 'Corporate'.toUpperCase()),
                    ],
                  ),
                ),
                const Icon(Icons.search_rounded, color: Colors.black),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 650,
            child: 
              TabBarView(
              controller: tabController,
              children: const[
                GridViewBuilder(),
                CustomPage(color: Colors.purple, title: 'Page 2'),
                CustomPage(color: Colors.yellow, title: 'Page 3'),
                CustomPage(color: Colors.blue, title: 'Page 4'),
                CustomPage(color: Colors.green, title: 'Page 5'),
                CustomPage(color: Colors.deepOrange, title: 'Page 6'),
                CustomPage(color: Colors.cyanAccent, title: 'Page 7'),

              ]
            ),    
          ),
        ],
    );
  }
}