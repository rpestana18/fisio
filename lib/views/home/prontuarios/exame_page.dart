import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../src/controllers/pacientes_controller.dart';

class ExamePage extends StatelessWidget {
  ExamePage({super.key});

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
          'Exame Clinico Fisico',
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
                        TextField(
                          controller: pacienteController.pressaoController,
                          decoration: const InputDecoration(
                            hintText: 'Digite o nome do paciente',
                            label: Text(
                              'Pressão Arterial Sistêmica',
                            ),
                            border: OutlineInputBorder(),
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        TextField(
                          controller:
                              pacienteController.frequenciaCardController,
                          decoration: const InputDecoration(
                            hintText: 'Frequência Cardíaca',
                            label: Text(
                              'Frequência Cardíaca',
                            ),
                            border: OutlineInputBorder(),
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        TextField(
                          controller: pacienteController.spoController,
                          decoration: const InputDecoration(
                            hintText: 'SpO2',
                            label: Text(
                              'SpO2',
                            ),
                            border: OutlineInputBorder(),
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        TextField(
                          controller:
                              pacienteController.frequenciaRespController,
                          decoration: const InputDecoration(
                            hintText: 'Frequência Respiratória',
                            label: Text(
                              'Frequência Respiratória',
                            ),
                            border: OutlineInputBorder(),
                          ),
                        ),
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
                                        'Caiu nos últimos 12 meses',
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
                                        'Você se sente instável quando em pé ou andando?',
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
                                        'Preocupa-se com quedas?',
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
                                  const Center(
                                    child: Text(
                                      'Testes',
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 12,
                                  ),
                                  TextField(
                                    controller:
                                        pacienteController.velocidadeController,
                                    minLines: 1,
                                    maxLines: 1,
                                    decoration: const InputDecoration(
                                      label: Text(
                                        'Velocidade de marcha',
                                      ),
                                      border: OutlineInputBorder(),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 12,
                                  ),
                                  TextField(
                                    controller:
                                        pacienteController.velocidadeController,
                                    minLines: 1,
                                    maxLines: 1,
                                    decoration: const InputDecoration(
                                      label: Text(
                                        'Time Up and Go',
                                      ),
                                      border: OutlineInputBorder(),

                                      /// Reativar
                                      suffixIcon: Icon(Icons.image),
                                    ),
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
                        const SizedBox(
                          height: 12,
                        ),
                        TextField(
                          controller: pacienteController.testesCompController,
                          minLines: 5,
                          maxLines: 10,
                          decoration: const InputDecoration(
                            label: Text(
                              'Testes complementares',
                            ),
                            border: OutlineInputBorder(),
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        TextField(
                          controller:
                              pacienteController.examesCompRespController,
                          minLines: 5,
                          maxLines: 10,
                          decoration: const InputDecoration(
                            label: Text(
                              'Exames complementares',
                            ),
                            border: OutlineInputBorder(),
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        TextField(
                          controller: pacienteController.diagnosticoController,
                          minLines: 5,
                          maxLines: 10,
                          decoration: const InputDecoration(
                            label: Text(
                              'Diagnóstico Fisioterapêutico',
                            ),
                            border: OutlineInputBorder(),
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        TextField(
                          controller: pacienteController.prognosticoController,
                          minLines: 5,
                          maxLines: 10,
                          decoration: const InputDecoration(
                            label: Text(
                              'Prognóstico',
                            ),
                            border: OutlineInputBorder(),
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        const Center(
                          child: Text(
                            'Plano Terapêutico',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        TextField(
                          minLines: 5,
                          maxLines: 10,
                          controller: pacienteController.planoController,
                          decoration: const InputDecoration(
                            label: Text(
                              'Objetivos',
                            ),
                            border: OutlineInputBorder(),
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        TextField(
                          controller:
                              pacienteController.atendimentosProvController,
                          decoration: const InputDecoration(
                            label: Text(
                              'Qtd. de atendimentos prováveis',
                            ),
                            border: OutlineInputBorder(),
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        TextField(
                          controller:
                              pacienteController.procedimentosProvController,
                          minLines: 5,
                          maxLines: 10,
                          decoration: const InputDecoration(
                            label: Text(
                              'Procedimentos',
                            ),
                            border: OutlineInputBorder(),
                          ),
                        ),
                        const SizedBox(
                          height: 32,
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                      ],
                    ),
                  ),
                ),

                // Botões
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 48,
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(
                            0xFF000857,
                          ),
                        ),
                        onPressed: () {
                          // Get.to(
                          //       () => const Exercicios(),
                          // );
                        },
                        child: const Text(
                          'Consulte os exercícios',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: Get.height * 0.015,
                    ),
                    SizedBox(
                      height: 48,
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(
                            0xFFF85509,
                          ),
                        ),
                        onPressed: () async {
                          try {
                            await pacienteController.atualizarExame();
                            Get.snackbar(
                              'Sucesso',
                              'Dados do paciente atualizados com sucesso',
                              snackPosition: SnackPosition.BOTTOM,
                              backgroundColor: Colors.green,
                              colorText: Colors.white,
                            );
                          } catch (e) {
                            Get.snackbar(
                              'Erro',
                              'Falha ao atualizar os dados do paciente',
                              snackPosition: SnackPosition.BOTTOM,
                              backgroundColor: Colors.red,
                              colorText: Colors.white,
                            );
                          }
                        },
                        child: const Text(
                          'Cadastrar/Atualizar',
                          style: TextStyle(
                            fontSize: 15,
                          ),
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
