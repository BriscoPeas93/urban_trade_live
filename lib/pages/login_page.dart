import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Image.asset(
                  'assets/imgs/logo.png',
                  width: 90,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: 'U',
                        style: GoogleFonts.quicksand(
                            color: Colors.orange,
                            fontSize: 25,
                            fontWeight: FontWeight.w500)),
                    TextSpan(
                        text: 'rban',
                        style: GoogleFonts.quicksand(
                            color: Colors.black87,
                            fontSize: 25,
                            fontWeight: FontWeight.w500)),
                    TextSpan(
                        text: ' T',
                        style: GoogleFonts.quicksand(
                            color: Colors.orange,
                            fontSize: 25,
                            fontWeight: FontWeight.w500)),
                    TextSpan(
                        text: 'rade',
                        style: GoogleFonts.quicksand(
                            color: Colors.black87,
                            fontSize: 25,
                            fontWeight: FontWeight.w500)),
                  ]),
                ),
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Ne le jetons pas, echangeons le!',
                    style: GoogleFonts.quicksand(
                        fontSize: 16,
                        color: Colors.black87,
                        fontWeight: FontWeight.w500),
                  )),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Connexion',
                      style: GoogleFonts.quicksand(
                          fontSize: 25,
                          color: Colors.black87,
                          fontWeight: FontWeight.w500),
                    )),
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Bonjour, nous sommes ravis de vous revoir. vous pouvez continuer là où vous vous êtes arrêté simplement en vous connectant.',
                    style: GoogleFonts.quicksand(
                        fontSize: 16,
                        color: Colors.black54,
                        fontWeight: FontWeight.w400),
                    textAlign: TextAlign.justify,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
