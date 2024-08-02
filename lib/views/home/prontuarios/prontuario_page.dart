import 'package:fisioterapia/src/controllers/pacientes_controller.dart';
import 'package:fisioterapia/views/home/prontuarios/exame_page.dart';
import 'package:fisioterapia/views/home/prontuarios/historico_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProntuarioPage extends StatelessWidget {
  ProntuarioPage({super.key});
  final PacienteController pacienteController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF000857),
        title: const Text('Detalhes do Paciente'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Expanded(
                flex: 6,
                child: Column(
                  children: [
                    TextField(
                      controller: pacienteController.nomeController,
                      decoration: const InputDecoration(
                        labelText: 'Nome',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 12),
                    TextField(
                      controller: pacienteController.nascimentoController,
                      decoration: const InputDecoration(
                        labelText: 'Data de Nascimento',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 12),
                    TextField(
                      controller: pacienteController.emailController,
                      decoration: const InputDecoration(
                        labelText: 'Email',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 12),
                    TextField(
                      controller: pacienteController.telefoneController,
                      decoration: const InputDecoration(
                        labelText: 'Telefone',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 12),
                    TextField(
                      controller: pacienteController.avaliacaoController,
                      decoration: const InputDecoration(
                        labelText: 'Data de avaliação',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 24),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: 48,
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF808080),
                        ),
                        onPressed: () async {
                          Get.to(
                            HistoricoClinico(),
                          );
                        },
                        child: const Text(
                          'Histórico Clínico',
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 48,
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFF95507),
                        ),
                        onPressed: () async {
                          Get.to(
                            ExamePage(),
                          );
                        },
                        child: const Text(
                          'Exame clínico fisico',
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 48,
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF000857),
                        ),
                        onPressed: () async {
                          try {
                            await pacienteController.atualizarProntuario();
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
                          'Salvar',
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
