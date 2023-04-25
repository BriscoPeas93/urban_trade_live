import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/custom_button.dart';
import '../widgets/custom_text_field.dart';

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
              CustomTextField(
                  textHint: "Adresse email ici",
                  icon: Icons.mail_outline,
                  inputType: TextInputType.emailAddress),
              CustomTextField(
                textHint: "Mot de passe",
                icon: Icons.lock,
                inputType: TextInputType.visiblePassword,
                isPassWord: true,
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

              //mon button ici
              CustomOutLinedButton(
                borderColor: Colors.orangeAccent,
                backgroundColor: Colors.orangeAccent,
                textColor: Colors.white,
                textButton: "Se connecter",
                onTab: () {
                  Navigator.of(context)
                      .pushNamedAndRemoveUntil('AccueilPage', (route) => false);
                },
              ),

              const Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text("Vous n'avez pas de compte?"),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamedAndRemoveUntil(
                        'RegisterPage', (route) => false);
                  },
                  child: Text(
                    "S'inscrire ici",
                    style: GoogleFonts.quicksand(
                        decoration: TextDecoration.underline),
                  )),
              SizedBox(height: MediaQuery.of(context).size.height * 0.15),
              Text(
                "En continuant, vous acceptez nos Conditions d'utilisation et notre Politique de confidentialité.",
                style: GoogleFonts.quicksand(
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                    color: const Color.fromRGBO(0, 0, 0, 0.5)),
                textAlign: TextAlign.center,
              ),
              Center(
                child: Container(
                  height: 30,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Consulter les conditions ",
                      style: GoogleFonts.quicksand(
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                          color: Colors.blue,
                          decoration: TextDecoration.underline),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
