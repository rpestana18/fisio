import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../src/controllers/pacientes_controller.dart';

class HistoricoClinico extends StatelessWidget {
  HistoricoClinico({super.key});

  final PacienteController pacienteController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF000857),
        title: const Text('Histórico clínico'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
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
                          controller: pacienteController.queixaController,
                          minLines: 5,
                          maxLines: 10,
                          decoration: const InputDecoration(
                            hintText: 'Digite a queixa de funcionalidade',
                            label: Text('Queixa de funcionalidade'),
                            border: OutlineInputBorder(),
                          ),
                        ),
                        const SizedBox(height: 12),
                        TextField(
                          controller:
                              pacienteController.historiaAtualController,
                          minLines: 5,
                          maxLines: 10,
                          decoration: const InputDecoration(
                            hintText: 'Digite a história atual da doença',
                            label: Text('História atual da doença'),
                            border: OutlineInputBorder(),
                          ),
                        ),
                        const SizedBox(height: 12),
                        TextField(
                          controller:
                              pacienteController.historiaPregressalController,
                          minLines: 5,
                          maxLines: 10,
                          decoration: const InputDecoration(
                            hintText: 'Digite a história pregressa da doença',
                            label: Text('História pregressa da doença'),
                            border: OutlineInputBorder(),
                          ),
                        ),
                        const SizedBox(height: 12),
                        TextField(
                          controller: pacienteController.habitosController,
                          minLines: 5,
                          maxLines: 10,
                          decoration: const InputDecoration(
                            hintText: 'Digite os hábitos de vida',
                            label: Text('Hábitos de vida'),
                            border: OutlineInputBorder(),
                          ),
                        ),
                        const SizedBox(height: 12),
                        TextField(
                          controller: pacienteController.tratamentosController,
                          minLines: 5,
                          maxLines: 10,
                          decoration: const InputDecoration(
                            hintText: 'Digite os tratamentos realizados',
                            label: Text('Tratamentos realizados'),
                            border: OutlineInputBorder(),
                          ),
                        ),
                        const SizedBox(height: 12),
                        TextField(
                          controller: pacienteController.antecedentesController,
                          minLines: 5,
                          maxLines: 10,
                          decoration: const InputDecoration(
                            hintText:
                                'Digite os antecedentes pessoais e familiares',
                            label: Text('Antecedentes pessoais e familiares'),
                            border: OutlineInputBorder(),
                          ),
                        ),
                        const SizedBox(height: 12),
                      ],
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 48,
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF000857),
                        ),
                        onPressed: () {
                          Get.to(
                            () => EvolucaoPage(),
                          );
                        },
                        child: const Text(
                          'Evolução do tratamento',
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                    ),
                    SizedBox(height: Get.height * 0.015),
                    SizedBox(
                      height: 48,
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFF85509),
                        ),
                        onPressed: () async {
                          try {
                            await pacienteController.atualizarHistorico();
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
                          'Atualizar',
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

class EvolucaoPage extends StatelessWidget {
  EvolucaoPage({super.key});
  final PacienteController pacienteController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF000857),
        title: const Text('Evolução do Tratamento'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextField(
                // controller: pacienteController.evolucaoController.value,
                minLines: 5,
                maxLines: 10,
                decoration: const InputDecoration(
                  hintText: 'Digite a evolução do tratamento',
                  label: Text('Evolução do tratamento'),
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 12),
              SizedBox(
                height: 48,
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFF85509),
                  ),
                  onPressed: () async {
                    try {
                      // Show success SnackBar
                      Get.snackbar(
                        'Sucesso',
                        'Evolução do tratamento atualizada com sucesso',
                        snackPosition: SnackPosition.BOTTOM,
                        backgroundColor: Colors.green,
                        colorText: Colors.white,
                      );
                    } catch (e) {
                      Get.snackbar(
                        'Erro',
                        'Falha ao atualizar a evolução do tratamento',
                        snackPosition: SnackPosition.BOTTOM,
                        backgroundColor: Colors.red,
                        colorText: Colors.white,
                      );
                    }
                  },
                  child: const Text(
                    'Atualizar',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
