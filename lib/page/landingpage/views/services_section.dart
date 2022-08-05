import 'package:basecamp/export.dart';
import 'package:flutter/material.dart';

class ServicesSection extends StatelessWidget {
  const ServicesSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Container(
      width: double.infinity,
      height: 500,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/banner/services.png'),
          fit: BoxFit.cover
        )
      ),
      child: Row(
        children: [
          ServicesHover(
            number: '01',
            title: 'FILM\nPRODUCTION',
            item: '• Brand video\n• Documentary/Film\n• Corporate Video\n• Animation/Motion Graphics\n• Marketing and Sales videos',
            onTap: (){},
          ),
          ServicesHover(
            number: '02',
            title: 'LIVE\nPRODUCTION',
            item: '• Events\n• Social Media',
            onTap: (){},
          ),
          ServicesHover(
            number: '03',
            title: 'SOUND\nSTUDIO',
            item: '• Studio\n• Equiment',
            onTap: (){},
          ),
        ],
      ),
    );
  }
}
