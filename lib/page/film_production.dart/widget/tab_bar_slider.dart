import 'package:basecamp/export.dart';
import 'package:basecamp/page/film_production.dart/widget/film_production_details.dart';
import 'package:basecamp/page/film_production.dart/widget/live_production_detail.dart';
import 'package:basecamp/page/film_production.dart/widget/services_banner.dart';
import 'package:flutter/material.dart';

class CustomTabBarServices extends StatefulWidget {
  const CustomTabBarServices({Key? key}) : super(key: key);

  @override
  State<CustomTabBarServices> createState() => _CustomTabBarServicesState();
}

class _CustomTabBarServicesState extends State<CustomTabBarServices> with SingleTickerProviderStateMixin{
  late TabController tabController;
  @override
  void initState() {
    tabController = TabController(length: 3,initialIndex: 0, vsync: this);
    super.initState();
  }
  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
        children: [
          Container(
            width: double.infinity,
            height: 600,
            child: 
              TabBarView(
              controller: tabController,
              children: const[
                ServicesBanner(index: 0),
                ServicesBanner(index: 1),
                ServicesBanner(index: 2),
              ]
            ),    
          ),
          Container(
            height: 50,
            color: Colors.transparent,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  width: 600,
                  child: TabBar(
                    controller: tabController,
                    labelStyle: GoogleFonts.montserrat(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                    // indicatorWeight: 3.5,
                    labelColor:const Color(0xffCDFF00),
                    indicatorColor: Colors.transparent,
                    unselectedLabelColor: Colors.grey,
                    tabs: [
                      Tab(text: 'Film Production'.toUpperCase()),
                      Tab(text: 'live production'.toUpperCase()),
                      Tab(text: 'sound studio'.toUpperCase()),
                    ],
                  ),
                ),
                const Icon(Icons.search_rounded, color: Colors.black),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 500,
            child: 
              TabBarView(
              controller: tabController,
              children: const[
                FilmProductionDetails(),
                LiveProductionDetails(),
                Page(color: Colors.red, title: 'Pagina 3'),
              ]
            ),    
          ),
        ],
    );
  }
}

class Page extends StatelessWidget {
  final Color color;
  final String title;
  const Page({
    Key? key,
    required this.color,
    required this.title
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        alignment: Alignment.center,
        color: color,
        width: double.infinity,
        height: double.infinity,
        child: Letters(text: title, fontSize: 50),    
      ),
    );
  }
}