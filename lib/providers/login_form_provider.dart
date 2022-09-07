import 'package:flutter/material.dart';

class LoginFormProvider extends ChangeNotifier {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String usuario = '';
  String clave = '';
  //bool cargando;

  bool validaForm() {
    return formKey.currentState?.validate() ?? false;
  }
}
