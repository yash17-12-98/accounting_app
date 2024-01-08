import 'package:accounting_app/controller/auth_view_controller.dart';
import 'package:accounting_app/view/view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../resources/resources.dart';

class AuthView extends GetView<AuthViewController> {
  const AuthView({super.key});

  @override
  Widget build(BuildContext context) {
    return controller.routes.value == Routes.loginRoute
        ? const Login()
        : const DashBoard();
  }
}
