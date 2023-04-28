import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/product_adaptor.dart';

class ProductDetailPage extends StatefulWidget {
  const ProductDetailPage(
      {Key? key, required this.img, required this.libelle, required this.prix})
      : super(key: key);

  final String img;
  final String libelle;
  final int prix;

  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.orangeAccent,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text(
          widget.libelle,
          style: GoogleFonts.quicksand(
              color: Theme.of(context).primaryColor,
              fontWeight: FontWeight.w600),
        ),
      ),
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(
                  widget.img,
                  width: double.infinity,
                  height: 250,
                  fit: BoxFit.cover,
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            widget.libelle,
                            style: GoogleFonts.quicksand(
                                fontSize: 16, fontWeight: FontWeight.w600),
                          ),
                          Text(
                            "${widget.prix} CFA",
                            style: GoogleFonts.quicksand(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: Theme.of(context).primaryColor),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Description",
                        style: GoogleFonts.quicksand(
                            fontSize: 15, fontWeight: FontWeight.w800),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      const Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus eget gravida ante, sit amet dapibus elit. Quisque vel tincidunt sem, quis facilisis mauris. Pellentesque sagittis tortor vitae accumsan commodo. Donec feugiat sapien sed consequat consectetur. Aliquam fermentum ligula dolor, et luctus dui porta sit amet. Etiam eget porta nulla, in pellentesque nisl. Vestibulum sit amet pharetra tellus, vel varius mauris. Nulla orci turpis, porta quis pellentesque ac, luctus eget eros. Nam in tortor convallis, dictum risus at, accumsan nunc. Integer ornare quam pulvinar leo ullamcorper congue. Aliquam ornare eros vel libero ultrices egestas. Sed id scelerisque lacus. Aliquam erat volutpat. Morbi vestibulum mattis nisl, sit amet volutpat erat feugiat quis. Nam et risus lobortis, vulputate erat sed, eleifend diam. Aenean dignissim posuere eleifend. ',
                        textAlign: TextAlign.justify,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0, top: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Produits similaires",
                              style: GoogleFonts.quicksand(
                                  color: Colors.black87,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 250,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: const [
                            ProductAdaptor(
                              libelle: "Samsung S23 Plus",
                              img: "assets/products/phone-1.jpg",
                              prix: 700000,
                            ),
                            ProductAdaptor(
                              libelle: "Téléphone filaire",
                              img: "assets/products/phone-3.jpg",
                              prix: 250000,
                            ),
                            ProductAdaptor(
                              libelle: "Téléphone chinois",
                              img: "assets/products/phone-2.jpg",
                              prix: 50000,
                            ),
                            ProductAdaptor(
                              libelle: "iPhone 14 Pro Max",
                              img: "assets/products/phone-3.png",
                              prix: 450000,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 55,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Positioned(
              bottom: 2,
              left: 5,
              right: 5,
              // top: 5,
              child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Theme.of(context).primaryColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    child: Text(
                      "Ajouter au panier",
                      style: GoogleFonts.quicksand(
                          fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                  ))),
        ],
      ),
    );
  }
}
