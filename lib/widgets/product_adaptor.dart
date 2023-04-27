import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductAdaptor extends StatelessWidget {
  const ProductAdaptor(
      {Key? key, required this.libelle, required this.img, required this.prix})
      : super(key: key);

  final String libelle;
  final String img;
  final int prix;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Card(
            elevation: 1,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            shadowColor: Colors.orangeAccent.withOpacity(0.2),
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.45,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        img,
                        width: MediaQuery.of(context).size.width * 0.4,
                        height: 150,
                        fit: BoxFit.cover,
                        // color: Colors.orangeAccent,
                      ),
                    ),
                  ),
                  // const SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(libelle,
                            style: GoogleFonts.quicksand(
                                color: Colors.black54,
                                fontSize: 14,
                                fontWeight: FontWeight.bold)),
                        Text("$prix CFA",
                            style: GoogleFonts.quicksand(
                                color: Colors.orangeAccent,
                                fontSize: 14,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                  )
                ],
              ),
            )),
        Positioned(
            top: 15,
            right: 20,
            child: Card(
                child: InkWell(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: Icon(
                  Icons.bookmark_add_outlined,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            )))
      ],
    );
  }
}
