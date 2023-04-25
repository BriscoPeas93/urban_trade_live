import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomOutLinedButton extends StatefulWidget {
  const CustomOutLinedButton({
    Key? key,
    required this.textButton,
    required this.onTab,
    this.backgroundColor = Colors.orangeAccent,
    this.borderColor = Colors.orangeAccent,
    this.textColor = Colors.white,
  }) : super(key: key);

  final String textButton;
  final Function onTab;

  final Color backgroundColor;
  final Color borderColor;
  final Color textColor;

  @override
  State<CustomOutLinedButton> createState() => _CustomOutLinedButtonState();
}

class _CustomOutLinedButtonState extends State<CustomOutLinedButton> {
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        style: OutlinedButton.styleFrom(
            foregroundColor: widget.backgroundColor,
            backgroundColor: widget.backgroundColor,
            side: BorderSide(color: widget.borderColor, width: 1)),
        onPressed: () {
          widget.onTab();
        },
        child: Container(
          width: MediaQuery.of(context).size.width,
          alignment: Alignment.center,
          height: 50,
          child: Text(
            widget.textButton,
            style: GoogleFonts.quicksand(
                color: widget.textColor,
                fontSize: 15,
                fontWeight: FontWeight.bold),
          ),
        ));
  }
}
