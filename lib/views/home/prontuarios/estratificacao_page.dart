import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../src/controllers/pacientes_controller.dart';

class EstratificacaoPage extends StatelessWidget {
  EstratificacaoPage({super.key});

  final PacienteController pacienteController = Get.find();

  @override
  Widget build(BuildContext context) {
    bool preocupa = false;
    bool caiu = false;
    bool instavel = false;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(
          0xFF000857,
        ),
        title: const Text(
          'Estratificação',
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(
            16.0,
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 1,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 12,
                        ),
                        Card(
                          child: SizedBox(
                            width: Get.width,
                            child: Padding(
                              padding: const EdgeInsets.all(12),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  const Center(
                                    child: Text(
                                      'Estratificação do Risco de Quedas',
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 12,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'Caiu nos últimos 12 meses, se sente instável ao ficar em pé e preocupa-se com quedas?',
                                        style: TextStyle(
                                          fontSize: 14,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 3,
                                      ),
                                      Obx(
                                            () => Switch(
                                          value: pacienteController.caiu.value,
                                          onChanged: (c) {
                                            pacienteController.caiu.value =
                                            !pacienteController.caiu.value;
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 12,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'Há lesão? Tiveram duas ou mais quedas no último ano, é incapaz de se levantar ao deitar no chão e tem perda de consciência ou suspeita de síncope?',
                                        style: TextStyle(
                                          fontSize: 14,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 3,
                                      ),
                                      Obx(
                                            () => Switch(
                                          value:
                                          pacienteController.instavel.value,
                                          onChanged: (c) {
                                            pacienteController.instavel.value =
                                            !pacienteController
                                                .instavel.value;
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 12,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'A marcha e o Equilíbrio estão prejudicados (TUG > que 15 segundos) OU a Velocidade da Marcha está abaixo de 0.9m/s?',
                                        style: TextStyle(
                                          fontSize: 14,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 3,
                                      ),
                                      Obx(
                                            () => Switch(
                                          value:
                                          pacienteController.preocupa.value,
                                          onChanged: (c) {
                                            pacienteController.preocupa.value =
                                            !pacienteController
                                                .preocupa.value;
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 12,
                                  ),
                                  Center(
                                    child: ElevatedButton(
                                      onPressed: () {
                                        pacienteController.calcularRisco();
                                      },
                                      child: const Text(
                                        'calcular risco',
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 12,
                                  ),
                                  TextField(
                                    controller:
                                    pacienteController.respostaController,
                                    minLines: 8,
                                    maxLines: 8,
                                    readOnly: true,
                                    decoration: const InputDecoration(
                                      label: Text(
                                        'Resultado',
                                      ),
                                      border: OutlineInputBorder(),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
