import 'package:flutter/material.dart';
import 'package:basecamp/export.dart';
import 'package:basecamp/page/film_production.dart/widget/item_list.dart';

class FilmProduction extends StatelessWidget {
  const FilmProduction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: ScrollConfiguration.of(context).copyWith(scrollbars: true),
      child: ListView(
        children: [
          Container(
            color: Colors.black,
            width: double.infinity,
            height: 1200,
            child: const CustomMainTab(),
          ),
          const NewsLettersSection(),
          const ContactRibbon(),
        ],
      ),
    );
  }
}

class CustomMainTab extends StatefulWidget {
  const CustomMainTab({Key? key}) : super(key: key);
  @override
  State<CustomMainTab> createState() => _CustomMainTabState();
}

class _CustomMainTabState extends State<CustomMainTab> {
  int _currentSelection = 1;
  final GlobalKey _key1 = GlobalKey();
  final GlobalKey _key2 = GlobalKey();
  final GlobalKey _key3 = GlobalKey();
  final GlobalKey _key4 = GlobalKey();
  
  _selectedItem(int id){
    _currentSelection = id;
    switch(id){
      case 1:
        break;
      case 2:
        break;
      case 3:
        break;
      case 4:
        break;
      default:
    }
    setState((){});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1050,
      // margin: const EdgeInsets.symmetric(horizontal: 100),
      child: Column(
        children: [
          AnimatedSwitcher(
            duration: const Duration(milliseconds: 400),
            child: BannerList(
              key: ValueKey(_currentSelection),
              categoryBanner: banner.where((element) => element.servicesbanner == _currentSelection,).toList()
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20),
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  key: _key1,
                  onTap: () => _selectedItem(1),
                  child: LettersBold(
                    text: 'Film Production',
                    fontSize: 18,
                    color: _currentSelection == 1
                      ? const Color(0xffCDFF00)
                      : Colors.grey,
                  ),
                ),
                InkWell(
                  key: _key2,
                  onTap: () => _selectedItem(2),
                  child: LettersBold(
                    text: 'Live Production',
                    fontSize: 18,
                    color: _currentSelection == 2
                      ? const Color(0xffCDFF00)
                      : Colors.grey,
                  ),
                ),
                InkWell(
                  key: _key3,
                  onTap: () => _selectedItem(3),
                  child: LettersBold(
                    text: 'Sound Studio',
                    fontSize: 18,
                    color: _currentSelection == 3
                      ? const Color(0xffCDFF00)
                      : Colors.grey,
                  ),
                ),  
              ],
            ),
          ),
          AnimatedSwitcher(
            duration: const Duration(milliseconds: 400),
            child: ItemList(
              key: ValueKey(_currentSelection),
              categoryProduct: services.where((element) => element.category == _currentSelection,).toList()
            ),
          ),
        ],
      ),
    );
  }
}




