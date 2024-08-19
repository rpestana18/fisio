import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../src/controllers/exercicios_controller.dart';
import '../../../src/models/exercicio_model.dart';


class ExerciciosView extends StatelessWidget {
  const ExerciciosView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Exercicios();
  }
}

class Exercicios extends StatefulWidget {
  const Exercicios({super.key});

  @override
  State<Exercicios> createState() => _ExerciciosState();
}

class _ExerciciosState extends State<Exercicios> {
  final ExerciciosController controller = Get.put(ExerciciosController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF000857),
        title: const Text('Exercícios'),
      ),
      body: Column(
        children: [
          const SizedBox(height: 12),
          const Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 0),
              child: Card(
                child: Padding(
                  padding: EdgeInsets.all(12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(flex: 4, child: Text('Titulo')),
                      Expanded(
                          flex: 3,
                          child:
                              Text('Indicação', textAlign: TextAlign.center)),
                      Expanded(
                          flex: 2,
                          child: Text('Detalhes', textAlign: TextAlign.center)),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 14,
            child: Obx(
              () => Padding(
                padding: const EdgeInsets.all(12),
                child: ListView.builder(
                  itemCount: controller.exercicios.length,
                  itemBuilder: (context, index) {
                    final exercicio = controller.exercicios[index];
                    return buildExerciseCard(context, exercicio, index);
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildExerciseCard(
      BuildContext context, ExercicioModel exercicio, int index) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            Expanded(flex: 4, child: Text(exercicio.titulo)),
            Expanded(
                flex: 3,
                child: Text(exercicio.indicacao, textAlign: TextAlign.center)),
            Expanded(
              flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.to(() => DetalhesPage(exercicio: exercicio));
                    },
                    child: const Icon(Icons.info_outline),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DetalhesPage extends StatefulWidget {
  final ExercicioModel exercicio;

  const DetalhesPage({super.key, required this.exercicio});

  @override
  State<DetalhesPage> createState() => _DetalhesPageState();
}

class _DetalhesPageState extends State<DetalhesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF000857),
        title: const Text('Detalhes do Exercício'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    TextField(
                      controller: TextEditingController(
                          text: widget.exercicio.detalhes),
                      decoration: InputDecoration(
                        hintText: 'Digite a descrição do exercício',
                        label: const Text('Descrição'),
                        border: const OutlineInputBorder(),
                      ),
                      maxLines: null,
                      minLines: 25,
                    ),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(
                      width: Get.width,
                      height: Get.height * 0.05,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ExibirImagemPage(
                                imagemPath: widget.exercicio.imagem,
                              ),
                            ),
                          );
                        },
                        child: const Text('Exibir Imagem'),
                      ),
                    ),
                    SizedBox(
                      height: Get.height * 0.015,
                    ),
                    SizedBox(
                      width: Get.width,
                      height: Get.height * 0.05,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ExibirVideoPage(
                                videoPath: widget.exercicio.video,
                              ),
                            ),
                          );
                        },
                        child: const Text('Exibir Vídeo'),
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

class ExibirImagemPage extends StatelessWidget {
  final String imagemPath;

  const ExibirImagemPage({super.key, required this.imagemPath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Imagem do Exercício'),
        backgroundColor: const Color(0xFF000857),
      ),
      body: Center(
        child: Image.asset(imagemPath),
      ),
    );
  }
}

class ExibirVideoPage extends StatelessWidget {
  final String videoPath;

  const ExibirVideoPage({super.key, required this.videoPath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vídeo do Exercício'),
        backgroundColor: const Color(0xFF000857),
      ),
      body: Center(
        child: Image.asset(videoPath),
      ),
    );
  }
}
