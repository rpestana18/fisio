import 'package:fisioterapia/src/models/teste_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../src/controllers/testes_controller.dart';
import '../../../src/models/teste_model.dart';

class TestesView extends StatelessWidget {
  const TestesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Testes();
  }
}

class Testes extends StatefulWidget {
  const Testes({super.key});

  @override
  State<Testes> createState() => _TestesState();
}

class _TestesState extends State<Testes> {
  final TestesController controller = Get.put(TestesController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF000857),
        title: const Text('Testes e Escalas'),
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
                  itemCount: controller.testes.length,
                  itemBuilder: (context, index) {
                    final testes = controller.testes[index];
                    return buildTestCard(context, testes, index);
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildTestCard(
      BuildContext context, TestesModel teste, int index) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            Expanded(flex: 4, child: Text(teste.titulo)),
            Expanded(
                flex: 3,
                child: Text(teste.indicacao, textAlign: TextAlign.center)),
            Expanded(
              flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.to(() => DetalhesPage(teste: teste));
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
  final TestesModel teste;

  const DetalhesPage({super.key, required this.teste});

  @override
  State<DetalhesPage> createState() => _DetalhesPageState();
}

class _DetalhesPageState extends State<DetalhesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF000857),
        title: const Text('Detalhes do Teste'),
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
                          text: widget.teste.detalhes),
                      decoration: InputDecoration(
                        hintText: 'Digite a descrição do teste',
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
                                imagemPath: widget.teste.imagem,
                              ),
                            ),
                          );
                        },
                        child: const Text('Exibir Imagem'),
                      ),
                    )
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
        title: const Text('Imagem do Teste'),
        backgroundColor: const Color(0xFF000857),
      ),
      body: Center(
        child: Image.asset(imagemPath),
      ),
    );
  }
}
