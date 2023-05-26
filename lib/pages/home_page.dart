import 'package:banner_carousel/banner_carousel.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/product_adaptor.dart';

class AccueilPage extends StatefulWidget {
  const AccueilPage({Key? key}) : super(key: key);

  @override
  State<AccueilPage> createState() => _AccueilPageState();
}

class _AccueilPageState extends State<AccueilPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              height: 120,
              width: double.infinity,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                Colors.orangeAccent,
                Colors.orangeAccent.withOpacity(0.3),
                Colors.orangeAccent
              ])),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 40, horizontal: 10),
                child: Row(
                  children: [
                    ClipOval(
                      child: Container(
                          color: Colors.white,
                          child: const Center(
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Icon(Icons.person),
                            ),
                          )),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Nom et prenoms",
                          style: GoogleFonts.quicksand(
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "00 00 00 00",
                          style: GoogleFonts.quicksand(),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Urban Trade',
          style: GoogleFonts.quicksand(
              color: Colors.orangeAccent, fontWeight: FontWeight.w600),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications,
                color: Colors.orangeAccent,
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              margin: const EdgeInsets.all(15.0),
              height: 50,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                children: [
                  const Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Rechercher',
                    style:
                        GoogleFonts.quicksand(color: Colors.grey, fontSize: 16),
                  )
                ],
              ),
            ),
            BannerCarousel(
              banners: listBanners,
              customizedIndicators: const IndicatorModel.animation(
                  width: 20, height: 5, spaceBetween: 2, widthAnimation: 50),
              height: MediaQuery.of(context).size.height * 0.2,
              activeColor: Colors.orangeAccent,
              disableColor: Colors.white,
              animation: true,
              borderRadius: 10,
              width: MediaQuery.of(context).size.width,
              indicatorBottom: false,
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Text(
                "Catégories",
                style: GoogleFonts.quicksand(
                    color: Colors.black87,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 120,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _cardCategory('assets/imgs/voiture.png', 'Voiture'),
                  _cardCategory('assets/imgs/moto.png', 'Moto'),
                  _cardCategory('assets/imgs/bicyclette.png', 'Vélo'),
                  _cardCategory('assets/imgs/clothes.png', 'Habits'),
                  _cardCategory('assets/imgs/cuisine.png', 'Cuisine'),
                  _cardCategory('assets/imgs/ordinateur.png', 'Ordinateur'),
                  _cardCategory('assets/imgs/frigo.png', 'Frigo'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, top: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Ajouts récent",
                    style: GoogleFonts.quicksand(
                        color: Colors.black87,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "Sponsorisées",
                    style: GoogleFonts.quicksand(
                        color: Colors.black87,
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            // Stack ici ...............

            SizedBox(
              height: 250,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  ProductAdaptor(
                    libelle: "Kawazaki",
                    img: "assets/products/moto-1.png",
                    prix: 1700000,
                  ),
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
                    libelle: "Peugeot 206",
                    img: "assets/products/car-2.jpg",
                    prix: 150000,
                  ),
                  ProductAdaptor(
                    libelle: "Voiture rouge",
                    img: "assets/products/car-1.jpg",
                    prix: 1500000,
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 16.0, top: 15, bottom: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Annonces",
                    style: GoogleFonts.quicksand(
                        color: Colors.black87,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "Sponsorisées",
                    style: GoogleFonts.quicksand(
                        color: Colors.black87,
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),

            Wrap(
              spacing: 10,
              alignment: WrapAlignment.start,
              children: const [
                ProductAdaptor(
                  libelle: "Peugeot 206",
                  img: "assets/products/car-2.jpg",
                  prix: 150000,
                ),
                ProductAdaptor(
                  libelle: "Téléphone filaire",
                  img: "assets/products/phone-3.jpg",
                  prix: 250000,
                ),
                ProductAdaptor(
                  libelle: "Voiture rouge",
                  img: "assets/products/car-1.jpg",
                  prix: 1500000,
                ),
                ProductAdaptor(
                  libelle: "Kawazaki",
                  img: "assets/products/moto-1.png",
                  prix: 1700000,
                ),
                ProductAdaptor(
                  libelle: "Samsung S23 Plus",
                  img: "assets/products/phone-1.jpg",
                  prix: 700000,
                ),
                ProductAdaptor(
                  libelle: "iPhone 14 Pro",
                  img: "assets/products/phone-3.png",
                  prix: 700000,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, top: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Catégorie téléphone",
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
          ],
        ),
      ),
    );
  }

  Widget _cardCategory(String img, String libelle) {
    return Card(
      elevation: 1,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      shadowColor: Colors.orangeAccent.withOpacity(0.2),
      child: SizedBox(
        width: 100,
        height: 100,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                img,
                width: 50,
                height: 50,
                fit: BoxFit.cover,
                color: Colors.orangeAccent,
              ),
            ),
            Text(
              libelle,
              style: GoogleFonts.quicksand(
                  color: Colors.black54,
                  fontSize: 12,
                  fontWeight: FontWeight.w600),
            ),
            // const SizedBox(height: 6,)
          ],
        ),
      ),
    );
  }

  static const String banner1 =
      "https://picjumbo.com/wp-content/uploads/the-golden-gate-bridge-sunset-1080x720.jpg";
  static const String banner2 =
      "https://cdn.mos.cms.futurecdn.net/Nxz3xSGwyGMaziCwiAC5WW-1024-80.jpg";
  static const String banner3 = "https://wallpaperaccess.com/full/19921.jpg";
  static const String banner4 =
      "https://images.pexels.com/photos/2635817/pexels-photo-2635817.jpeg?auto=compress&crop=focalpoint&cs=tinysrgb&fit=crop&fp-y=0.6&h=500&sharp=20&w=1400";

  static List<BannerModel> listBanners = [
    BannerModel(imagePath: banner1, id: "1"),
    BannerModel(imagePath: banner2, id: "2"),
    BannerModel(imagePath: banner3, id: "3"),
    BannerModel(imagePath: banner4, id: "4"),
  ];
}
