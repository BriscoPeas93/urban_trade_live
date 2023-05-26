import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:urban_trade/widgets/modals.dart';

import '../env/app_constances.dart';

class CustomerController {
  CustomerController();

  loginCustomer(BuildContext context, String phone, String password) {
    Modal.loading(context);
    Dio dio = Dio();
    FormData formData =
        FormData.fromMap({'phone': phone, 'password': password});

    String url = BASE_API_URL + LOGIN_CUSTOMER_URL;
    dio
        .post(
          url,
          data: formData,
          options: Options(
            method: 'POST', responseType: ResponseType.json,
            // headers:
          ),
        )
        .timeout(const Duration(seconds: timeOutData))
        .then((response) async {
      if (response.data['code'] == 1) {
        //connexion reussie
        //print("ton url est: ${response.data}");
        SharedPreferences prefs = await SharedPreferences.getInstance();
        prefs.setInt('user_id', response.data['id']);
        prefs.setString('phone', response.data['phone']);
        prefs.setString('name', response.data['name']);
        Modal.showToast(context, response.data['message']);
        Navigator.of(context).pushNamedAndRemoveUntil(
            'AccueilPage', (Route<dynamic> route) => false);
      } else {
        // connexion impossible
        Modal.showToast(context, response.data['message']);
      }
    });
  }
}
