import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {Key? key,
      required this.textHint,
      required this.icon,
      required this.inputType,
      this.isPassWord = false,
      required this.controller})
      : super(key: key);

  final String textHint;
  final IconData icon;
  final TextInputType inputType;
  final bool isPassWord;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: SizedBox(
        height: 50,
        child: TextField(
          controller: controller,
          keyboardType: inputType,
          obscureText: isPassWord,
          decoration: InputDecoration(
            filled: true,
            fillColor: const Color.fromRGBO(243, 244, 246, 1),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6),
                borderSide: BorderSide.none),
            hintText: textHint,
            hintStyle: GoogleFonts.quicksand(
                fontSize: 14, fontWeight: FontWeight.normal),
            prefixIcon: Icon(
              icon,
              color: Colors.grey,
            ),
          ),
        ),
      ),
    );
  }
}
