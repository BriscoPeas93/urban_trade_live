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
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: SizedBox(
                  height: 50,
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color.fromRGBO(243, 244, 246, 1),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6),
                          borderSide: BorderSide.none),
                      hintText: "Adresse email",
                      hintStyle: GoogleFonts.quicksand(
                          fontSize: 14, fontWeight: FontWeight.normal),
                      prefixIcon: const Icon(
                        Icons.email_outlined,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: SizedBox(
                  height: 50,
                  child: TextField(
                    obscureText: true,
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color.fromRGBO(243, 244, 246, 1),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6),
                          borderSide: BorderSide.none),
                      hintText: "Mot de passe",
                      hintStyle: GoogleFonts.quicksand(
                          fontSize: 14, fontWeight: FontWeight.normal),
                      prefixIcon: const Icon(
                        Icons.lock_outlined,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Mot de passe oublié',
                      style: GoogleFonts.quicksand(),
                    )),
              ),
              OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      foregroundColor: Colors.orangeAccent,
                      backgroundColor: Colors.orangeAccent,
                      side: const BorderSide(
                          color: Colors.orangeAccent, width: 1)),
                  onPressed: () {},
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    alignment: Alignment.center,
                    height: 50,
                    child: Text(
                      'Se connecter',
                      style: GoogleFonts.quicksand(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  )),
              const Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text("Vous n'avez pas de compte?"),
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "S'inscrire ici",
                    style: GoogleFonts.quicksand(
                        decoration: TextDecoration.underline),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
