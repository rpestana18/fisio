import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../views/home_view.dart';

class AuthController extends GetxController {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var hidePassword = true.obs;

  void togglePasswordVisibility() {
    hidePassword.value = !hidePassword.value;
  }

  String? validateEmail(String email) {
    if (email.isEmpty) {
      return 'Email não pode ser vazio';
    }
    String pattern = r'^[^@]+@[^@]+\.[^@]+';
    RegExp regex = RegExp(pattern);
    if (!regex.hasMatch(email)) {
      return 'Por favor, insira um email válido';
    }
    return null;
  }

  String? validatePassword(String password) {
    if (password.isEmpty) {
      return 'Senha não pode ser vazia';
    }
    if (password.length < 6) {
      return 'Senha deve ter pelo menos 6 caracteres';
    }
    return null;
  }

  void login() {
    String email = emailController.text.trim();
    String password = passwordController.text.trim();

    String? emailError = validateEmail(email);
    String? passwordError = validatePassword(password);

    if (emailError != null || passwordError != null) {
      Get.snackbar(
        'Erro',
        emailError ?? passwordError!,
        backgroundColor: Colors.red,
        colorText: Colors.white,
        snackPosition: SnackPosition.BOTTOM,
      );
      return;
    }

    if (email == 'admin@admin.com' && password == 'admin123') {
      Get.snackbar(
        'Sucesso',
        'Logado com sucesso!',
        backgroundColor: Colors.green,
        colorText: Colors.white,
      );
      Get.offAll(
        const HomeView(),
      );
    } else {
      Get.snackbar(
        'Erro',
        'Credenciais inválidas',
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    }
  }

  void register() {
    Get.snackbar(
      'Erro',
      'Essa função ainda não está disponível',
      backgroundColor: Colors.red,
      colorText: Colors.white,
      snackPosition: SnackPosition.BOTTOM,
    );
  }
}
