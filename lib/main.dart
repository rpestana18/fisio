import 'package:fisioterapia/src/controllers/auth_controller.dart';
import 'package:fisioterapia/src/controllers/pacientes_controller.dart';
import 'package:fisioterapia/views/auth/auth_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// corrigir masks

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(PacienteController());
    Get.put(AuthController());

    return GetMaterialApp(
      theme: ThemeData(
        useMaterial3: false,
        colorSchemeSeed: const Color(0xFF000857),
      ),
      home: const AuthView(),
    );
  }
}

class ImageView extends StatefulWidget {
  const ImageView({super.key});

  @override
  State<ImageView> createState() => _ImageViewState();
}

class _ImageViewState extends State<ImageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Nome do exercicio',
        ),
      ),
      body: Center(
        child: Image.asset('lib/images/gif.gif'),
      ),
    );
  }
}
