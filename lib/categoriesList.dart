import 'categories.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoriesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dummyCategories.length,
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) {
        final category = dummyCategories[index];
        return Container(
          width: 180,
          margin: EdgeInsets.only(right: 15),
          child: Stack(
            children: <Widget>[
              Positioned(
                left: 0,
                right: 50,
                top: 50,
                bottom: 5,
                child: Card(
                  elevation: 8,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        category.name,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 0,
                left: 50,
                right: 0,
                bottom: 80,
                child: Card(
                  color: Color.fromRGBO(239, 191, 185, 1.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16)),
                  child: Center(
                    child: Image.asset(category.urlimage),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
