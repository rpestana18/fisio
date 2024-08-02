import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

import '../../src/controllers/auth_controller.dart';
import 'login_view.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    final AuthController controller = Get.find();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF000857),
        title: const Text('Cadastro Profissional'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const TextField(
                  decoration: InputDecoration(
                    hintText: 'Digite seu nome',
                    label: Text('Nome'),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: Get.height * 0.015),
                const TextField(
                  decoration: InputDecoration(
                    hintText: 'Digite seu email',
                    label: Text('Email'),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: Get.height * 0.015),
                TextField(
                  inputFormatters: [
                    MaskTextInputFormatter(
                      mask: '##/##/####',
                      filter: {"#": RegExp(r'[0-9]')},
                      type: MaskAutoCompletionType.lazy,
                    ),
                  ],
                  decoration: const InputDecoration(
                    hintText: 'Digite sua data de nascimento',
                    label: Text('Nascimento'),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: Get.height * 0.015),
                TextField(
                  inputFormatters: [
                    MaskTextInputFormatter(
                      mask: '(##) #.####-####',
                      filter: {"#": RegExp(r'[0-9]')},
                      type: MaskAutoCompletionType.lazy,
                    ),
                  ],
                  decoration: const InputDecoration(
                    hintText: 'Digite seu número de telefone',
                    label: Text('Telefone'),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: Get.height * 0.025),
                Obx(
                  () => TextField(
                    obscureText: controller.hidePassword.value,
                    decoration: InputDecoration(
                      hintText: 'Digite sua senha',
                      label: const Text('Senha'),
                      border: const OutlineInputBorder(),
                      suffixIcon: IconButton(
                        onPressed: controller.togglePasswordVisibility,
                        icon: Icon(
                          controller.hidePassword.value
                              ? Icons.visibility_off
                              : Icons.visibility,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: Get.height * 0.015),
                Obx(
                  () => TextField(
                    obscureText: controller.hidePassword.value,
                    decoration: const InputDecoration(
                      hintText: 'Digite sua senha novamente',
                      label: Text('Repetir senha'),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(height: Get.height * 0.05),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 48,
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFF85509),
                        ),
                        onPressed: () {
                          controller.register();
                        },
                        child: const Text(
                          'Registrar-se',
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      height: 48,
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF000857),
                        ),
                        onPressed: () {
                          Get.to(() => LoginView());
                        },
                        child: const Text(
                          'Já possuo conta',
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
