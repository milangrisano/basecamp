import 'package:basecamp/export.dart';
import 'package:basecamp/page/blog/blog_page.dart';
import 'package:flutter/material.dart';

class LandingPageLayout extends StatefulWidget {
  const LandingPageLayout({Key? key}) : super(key: key);

  @override
  State<LandingPageLayout> createState() => _LandingPageLayoutState();
}

class _LandingPageLayoutState extends State<LandingPageLayout> with SingleTickerProviderStateMixin{
  late TabController tabController;
  @override
  void initState() {
    tabController = TabController(length: 6,initialIndex: 0, vsync: this);
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
    return Scaffold(
      body: ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
        child: ListView(
          physics: const NeverScrollableScrollPhysics(),
          children: [
            Column(
              children: [
                Container(
                  height: 90,
                  color: Colors.black,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () => Navigator.pushNamed(context, '/home'),
                        child: const Logo(width: 100, height: 90)
                      ),
                      if ( size.width > 800 )
                      ...[
                        SizedBox(
                          width: 620,
                          child: TabBar(
                            controller: tabController,
                            labelStyle: GoogleFonts.roboto(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                            indicatorWeight: 3.5,
                            labelColor: Colors.white,
                            indicatorColor: const Color(0xffCDFF00),
                            unselectedLabelColor: Colors.grey,
                            tabs: const[
                              Tab(text: 'HOME'),
                              Tab(text: 'ABOUT'),
                              Tab(text: 'PROJECTS'),
                              Tab(text: 'SERVICES'),
                              Tab(text: 'BLOG'),
                              Tab(text: 'CONTACT'),
                            ],
                          ),
                        ),
                      ] ,
                      ElevatedButton.icon(
                        onPressed: (){},
                        icon: const Icon(Icons.arrow_forward, color: Colors.black),
                        label: const LettersBold(text: 'Need a Proyect?', color: Colors.black),
                        style: ElevatedButton.styleFrom(
                          primary: const Color(0xffCDFF00),
                          elevation: 4,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40))
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.black,
                  width: double.infinity,
                  height: size.height,
                  child: 
                    TabBarView(
                    controller: tabController,
                    children: const[
                      LandingPage(),
                      AboutPage(),
                      ProjectPage(),
                      FilmProduction(),
                      BlogPage(),
                      ContactUsPage(),
                    ]
                  ),
                ),                
              ],
            ),
          ],
        ),
      ),
    );
  }
}

