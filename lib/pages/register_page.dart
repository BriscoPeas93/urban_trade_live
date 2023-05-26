import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Image.asset(
                  'assets/img/logo.png',
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
                    text: const TextSpan(
                  text: '',
                  style: TextStyle(
                    color: Colors.black45,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                  children: [
                    TextSpan(
                      text: 'U',
                      style: TextStyle(
                        color: Colors.orange,
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    TextSpan(
                      text: 'rban',
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    TextSpan(
                      text: ' T',
                      style: TextStyle(
                        color: Colors.orange,
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    TextSpan(
                      text: 'rade',
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                )),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Ne le jetons pas, échangeons-le !',
                  style: GoogleFonts.quicksand(
                    color: Colors.black87,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Inscription',
                      style: GoogleFonts.quicksand(
                        color: Colors.black87,
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      'Bonjour, nous sommes ravis de vous revoir. vous pouvez continuer là où vous vous êtes arrêté simplement en vous connectant.',
                      style: GoogleFonts.quicksand(
                        color: Colors.black54,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: SizedBox(
                  height: 50,
                  child: TextField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color.fromRGBO(243, 244, 246, 1.0),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6),
                          borderSide: BorderSide.none),
                      // labelText: 'Adresse Email',
                      hintText: 'Nom',
                      hintStyle: GoogleFonts.quicksand(
                          fontSize: 14, fontWeight: FontWeight.normal),
                      prefixIcon: const Icon(Icons.person_outline,
                          size: 16, color: Colors.grey),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: SizedBox(
                  height: 50,
                  child: TextField(
                    // controller: widget.controller,
                    // obscureText: widget.showPassword ? false : true,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color.fromRGBO(243, 244, 246, 1.0),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6),
                          borderSide: BorderSide.none),
                      // labelText: 'Adresse Email',
                      hintText: 'Prénom(s)',
                      hintStyle: GoogleFonts.quicksand(
                          fontSize: 14, fontWeight: FontWeight.normal),
                      prefixIcon: const Icon(Icons.person_outline,
                          size: 16, color: Colors.grey),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: SizedBox(
                  height: 50,
                  child: TextField(
                    // controller: widget.controller,
                    // obscureText: widget.showPassword ? false : true,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color.fromRGBO(243, 244, 246, 1.0),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6),
                          borderSide: BorderSide.none),
                      // labelText: 'Adresse Email',
                      hintText: 'Numéro de téléphone',
                      hintStyle: GoogleFonts.quicksand(
                          fontSize: 14, fontWeight: FontWeight.normal),
                      prefixIcon:
                          const Icon(Icons.phone, size: 16, color: Colors.grey),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: SizedBox(
                  height: 50,
                  child: TextField(
                    // controller: widget.controller,
                    // obscureText: widget.showPassword ? false : true,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color.fromRGBO(243, 244, 246, 1.0),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6),
                          borderSide: BorderSide.none),
                      // labelText: 'Adresse Email',
                      hintText: 'Adresse Email',
                      hintStyle: GoogleFonts.quicksand(
                          fontSize: 14, fontWeight: FontWeight.normal),
                      prefixIcon: const Icon(Icons.mail_outline,
                          size: 16, color: Colors.grey),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: SizedBox(
                  height: 50,
                  child: TextField(
                    // controller: widget.controller,
                    obscureText: true,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color.fromRGBO(243, 244, 246, 1.0),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6),
                          borderSide: BorderSide.none),
                      hintText: 'Mot de passe',
                      hintStyle: GoogleFonts.quicksand(
                          fontSize: 14, fontWeight: FontWeight.normal),
                      prefixIcon: const Icon(Icons.lock_outline_rounded,
                          size: 16, color: Colors.grey),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              OutlinedButton(
                onPressed: () {
                  Navigator.of(context).pushNamedAndRemoveUntil(
                      '/PrincipalPage', (Route<dynamic> route) => false);
                },
                style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.transparent,
                    backgroundColor: Colors.orangeAccent,
                    side:
                        const BorderSide(color: Colors.orangeAccent, width: 1),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6))),
                child: Container(
                    width: MediaQuery.of(context).size.width,
                    alignment: Alignment.center,
                    height: 50,
                    child: Text('Se connecter',
                        style: GoogleFonts.quicksand(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white))),
              ),
              const SizedBox(height: 20),
              Center(
                child: Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  spacing: 0,
                  direction: Axis.vertical,
                  children: [
                    Text(
                      "Avez-vous déjà un compte ?",
                      style: GoogleFonts.quicksand(
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          color: const Color.fromRGBO(0, 0, 0, 0.5)),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pushNamedAndRemoveUntil(
                            '/LoginPage', (Route<dynamic> route) => false);
                      },
                      child: Text(
                        "Connectez-vous ici",
                        style: GoogleFonts.quicksand(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.orangeAccent,
                            decoration: TextDecoration.underline,
                            decorationThickness: 1.5),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.1),
              Text(
                "En continuant, vous acceptez nos Conditions d'utilisation et notre Politique de confidentialité.",
                style: GoogleFonts.quicksand(
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                    color: const Color.fromRGBO(0, 0, 0, 0.5)),
                textAlign: TextAlign.center,
              ),
              Center(
                child: SizedBox(
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

    TextEditingController phone_controller = TextEditingController();

}
