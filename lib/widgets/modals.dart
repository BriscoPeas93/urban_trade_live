import 'package:flutter/material.dart';
import 'package:flutter_toastr/flutter_toastr.dart';

class Modal {
  static loading(BuildContext context) {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return Center(
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(90)),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.orange),
                ),
              ),
            ),
          );
        });
  }

  static showToast(BuildContext ctx, String message) {
    return FlutterToastr.show(message, ctx,
        duration: FlutterToastr.lengthLong, position: FlutterToastr.bottom);
  }
}
