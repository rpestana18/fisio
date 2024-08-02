import 'package:fisioterapia/src/controllers/pacientes_controller.dart';
import 'package:fisioterapia/src/models/paciente_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'prontuario_page.dart';

class PacientesProntuariosPage extends StatelessWidget {
  PacientesProntuariosPage({super.key});

  final PacienteController pacienteController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF000857),
        title: const Text('Pacientes'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showAddPacienteDialog(context);
        },
        backgroundColor: const Color(0xFFF85509),
        child: const Icon(Icons.add),
      ),
      body: Column(
        children: [
          const SizedBox(height: 12),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 0),
            child: Card(
              child: Padding(
                padding: EdgeInsets.all(12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Nome'),
                    Text('Situação'),
                    Text('Prontuário'),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 14,
            child: Obx(() {
              if (pacienteController.isLoading.value) {
                return const Center(child: CircularProgressIndicator());
              }
              if (pacienteController.pacientes.isEmpty) {
                return const Center(child: Text('Nenhum paciente encontrado'));
              }
              return RefreshIndicator(
                onRefresh: pacienteController.getPacientes,
                child: ListView.builder(
                  padding: const EdgeInsets.all(12),
                  itemCount: pacienteController.pacientes.length,
                  itemBuilder: (c, i) {
                    PacienteModel model = pacienteController.pacientes[i];
                    return Dismissible(
                      key: Key(model.id.toString()),
                      direction: DismissDirection.endToStart,
                      onDismissed: (direction) {
                        pacienteController.deletePaciente(model.id!);
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('${model.nome} foi deletado'),
                          ),
                        );
                      },
                      background: Container(
                        color: Colors.red,
                        alignment: Alignment.centerRight,
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: const Icon(
                          Icons.delete,
                          color: Colors.white,
                        ),
                      ),
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 5,
                                child: Text(model.nome),
                              ),
                              const Expanded(
                                flex: 2,
                                child: Text(
                                  'Ativo',
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              Expanded(
                                flex: 5,
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: IconButton(
                                    icon: const Icon(Icons.info_outline),
                                    onPressed: () async {
                                      await pacienteController
                                          .openPaciente(model);
                                      Get.to(() => ProntuarioPage());
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              );
            }),
          ),
        ],
      ),
    );
  }

  void _showAddPacienteDialog(BuildContext context) {
    final TextEditingController nomeController = TextEditingController();

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Adicionar Paciente'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: nomeController,
                decoration: const InputDecoration(
                  hintText: 'Nome do paciente',
                ),
              ),
            ],
          ),
          actions: [
            TextButton(
              child: const Text('Cancelar'),
              onPressed: () {
                Get.back();
              },
            ),
            TextButton(
              child: const Text('Adicionar'),
              onPressed: () {
                PacienteModel newPaciente = PacienteModel(
                  nome: nomeController.text,
                  situacao: 'Ativo',
                );
                pacienteController.addPaciente(newPaciente);
                Get.back();
              },
            ),
          ],
        );
      },
    );
  }
}
