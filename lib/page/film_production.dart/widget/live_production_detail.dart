import 'package:basecamp/export.dart';
import 'package:basecamp/page/film_production.dart/widget/item_list_live.dart';
import 'package:flutter/material.dart';

class LiveProductionDetails extends StatefulWidget {
  const LiveProductionDetails({Key? key}) : super(key: key);
  @override
  State<LiveProductionDetails> createState() => _LiveProductionDetailsState();
}
class _LiveProductionDetailsState extends State<LiveProductionDetails> {
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
      margin: const EdgeInsets.symmetric(horizontal: 40),
      child: Row(
        children: [
          Container(
            width: 300,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: InkWell(
                    key: _key1,
                    onTap: () => _selectedItem(1),
                    child: LettersBold(
                      text: 'EVENTS',
                      fontSize: 18,
                      color: _currentSelection == 1
                        ? const Color(0xffCDFF00)
                        : Colors.grey,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: InkWell(
                    key: _key2,
                    onTap: () => _selectedItem(2),
                    child: LettersBold(
                      text: 'SOCIAL MEDIA',
                      fontSize: 18,
                      color: _currentSelection == 2
                        ? const Color(0xffCDFF00)
                        : Colors.grey,
                    ),
                  ),
                ), 
              ],
            ),
          ),
          Expanded(
            child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 400),
              child: ItemListLive(
                key: ValueKey(_currentSelection),
                categoryProduct: services.where((element) => element.category == _currentSelection,).toList()
              ),
            ),
          ),
        ],
      ),
    );
  }
}