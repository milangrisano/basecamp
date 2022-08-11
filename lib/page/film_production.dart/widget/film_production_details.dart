import 'package:basecamp/export.dart';
import 'package:basecamp/page/film_production.dart/widget/item_list_film.dart';
import 'package:flutter/material.dart';

class FilmProductionDetails extends StatefulWidget {
  const FilmProductionDetails({Key? key}) : super(key: key);
  @override
  State<FilmProductionDetails> createState() => _FilmProductionDetailsState();
}
class _FilmProductionDetailsState extends State<FilmProductionDetails> {
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
                      text: 'BRAND VIDEO',
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
                      text: 'DOCUMENTARY/FILM',
                      fontSize: 18,
                      color: _currentSelection == 2
                        ? const Color(0xffCDFF00)
                        : Colors.grey,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: InkWell(
                    key: _key3,
                    onTap: () => _selectedItem(3),
                    child: LettersBold(
                      text: 'CORPORATE VIDEO',
                      fontSize: 18,
                      color: _currentSelection == 3
                        ? const Color(0xffCDFF00)
                        : Colors.grey,
                    ),
                  ),
                ),  
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: InkWell(
                    key: _key4,
                    onTap: () => _selectedItem(4),
                    child: LettersBold(
                      text: 'ANIMATION/MOTION GRAPHICS',
                      fontSize: 18,
                      color: _currentSelection == 4
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
              child: ItemListFilm(
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