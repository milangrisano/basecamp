import 'package:basecamp/export.dart';
import 'package:flutter/material.dart';

class GridBlogBuilder extends StatelessWidget {
  final int itemCount;
  const GridBlogBuilder({
    Key? key, required this.itemCount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color:  Colors.black,
      width: double.infinity,
      height: 1000,
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: itemCount,
        padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 50),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          mainAxisExtent: 300
        ),
        itemBuilder: (context, index){
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                ),
                elevation: 5,
                child: Container(
                  height: 233,
                  width: 387,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    image: DecorationImage(
                      image: AssetImage(allBlog[index].image),
                      fit: BoxFit.cover
                    )
                  ),
                )
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    LettersBold(
                      text: allBlog[index].text,
                      color: Colors.white,
                      fontSize: 22,
                    ),
                    Letters(text: allBlog[index].date)
                  ],
                ),
              ),
            ],
          );
        }
      ),
    );
  }
}