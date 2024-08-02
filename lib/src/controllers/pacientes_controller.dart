import 'package:fisioterapia/src/db/db.dart';
import 'package:fisioterapia/src/models/paciente_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sqflite/sqflite.dart';

class PacienteController extends GetxController {
  var pacientes = <PacienteModel>[].obs;
  var isLoading = false.obs;
  late Database db;

  /// TextEdditingControllers

  /// 1
  TextEditingController nomeController = TextEditingController();
  TextEditingController nascimentoController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController telefoneController = TextEditingController();
  TextEditingController avaliacaoController = TextEditingController();

  /// 2
  TextEditingController queixaController = TextEditingController();
  TextEditingController historiaAtualController = TextEditingController();
  TextEditingController historiaPregressalController = TextEditingController();
  TextEditingController habitosController = TextEditingController();
  TextEditingController tratamentosController = TextEditingController();
  TextEditingController antecedentesController = TextEditingController();

  /// 3
  TextEditingController pressaoController = TextEditingController();
  TextEditingController frequenciaCardController = TextEditingController();
  TextEditingController spoController = TextEditingController();
  TextEditingController frequenciaRespController = TextEditingController();
  TextEditingController testesCompController = TextEditingController();
  TextEditingController examesCompRespController = TextEditingController();
  TextEditingController diagnosticoController = TextEditingController();
  TextEditingController prognosticoController = TextEditingController();
  TextEditingController planoController = TextEditingController();
  TextEditingController atendimentosProvController = TextEditingController();
  TextEditingController procedimentosProvController = TextEditingController();

  RxBool caiu = false.obs;
  RxBool instavel = false.obs;
  RxBool preocupa = false.obs;

  TextEditingController velocidadeController = TextEditingController();
  TextEditingController timeUpController = TextEditingController();
  TextEditingController respostaController =
      TextEditingController(text: 'A resposta será exibida aqui');
  void calcularRisco() {
    if (!caiu.value) {
      respostaController.text = '''Baixo Risco
Prevenção Primária

Reavaliar em 1 ano.

Educar sobre prevenções de quedas e exercícios''';
    } else if (!preocupa.value) {
      respostaController.text = '''Risco Intermediário
Prevenção Secundária

Reavaliar em 1 ano

Procurar Fisioterapeuta, realizar exercício de equilíbrio, marcha, força e educar sobre prevenções de quedas''';
    } else {
      respostaController.text = '''Alto Risco
Prevenção Secundária e tratamento

Acompanhamento em 30 a 90 dias.
Quedas Multifatoriais e Avaliação de Risco.
Intervenções personalzadas e individualizadas''';
    }
  }

  var pacienteAtual = PacienteModel(
    nome: '',
    situacao: 'Ativo',
  );

  @override
  void onInit() {
    super.onInit();
    _initializeDatabase();
  }

  Future<void> _initializeDatabase() async {
    isLoading.value = true;
    db = await DB.instance.database;
    getPacientes();
    isLoading.value = false;
  }

  Future<void> openPaciente(PacienteModel paciente) async {
    isLoading.value = true;
    pacienteAtual = paciente;

    nomeController.text = pacienteAtual.nome;
    nascimentoController.text = pacienteAtual.nascimento ?? '';
    emailController.text = pacienteAtual.email ?? '';
    telefoneController.text = pacienteAtual.telefone ?? '';
    avaliacaoController.text = pacienteAtual.avaliacao ?? '';

    pressaoController.text = pacienteAtual.pressaoArterial ?? '';
    frequenciaCardController.text = pacienteAtual.frequenciaCardiaca ?? '';
    spoController.text = '';
    frequenciaRespController.text = '';
    testesCompController.text = pacienteAtual.testesComplementares ?? '';
    examesCompRespController.text = pacienteAtual.examesComplementares ?? '';
    diagnosticoController.text =
        pacienteAtual.diagnosticoFisioterapeutico ?? '';
    prognosticoController.text = pacienteAtual.prognostico ?? '';
    planoController.text = '';
    atendimentosProvController.text = '';
    procedimentosProvController.text = pacienteAtual.procedimentos ?? '';

    queixaController.text = pacienteAtual.queixaFuncionalidade ?? '';
    historiaAtualController.text = pacienteAtual.historiaAtual ?? '';
    historiaPregressalController.text = pacienteAtual.historiaPregressa ?? '';
    habitosController.text = pacienteAtual.habitosVida ?? '';
    tratamentosController.text = pacienteAtual.tratamentosRealizados ?? '';
    antecedentesController.text = pacienteAtual.antecedentes ?? '';

    isLoading.value = false;
  }

  Future<void> atualizarProntuario() async {
    if (nomeController.text.length > 3) {
      isLoading.value = true;

      pacienteAtual.nome = nomeController.text;
      pacienteAtual.nascimento = nascimentoController.text;
      pacienteAtual.email = emailController.text;
      pacienteAtual.telefone = telefoneController.text;
      pacienteAtual.avaliacao = avaliacaoController.text;

      updatePaciente(pacienteAtual);

      isLoading.value = false;
    }
  }

  Future<void> atualizarExame() async {
    if (nomeController.text.length > 3) {
      isLoading.value = true;

      pacienteAtual.pressaoArterial = pressaoController.text;
      pacienteAtual.frequenciaCardiaca = frequenciaCardController.text;
      pacienteAtual.testesComplementares = testesCompController.text;
      pacienteAtual.examesComplementares = examesCompRespController.text;
      pacienteAtual.diagnosticoFisioterapeutico = diagnosticoController.text;
      pacienteAtual.prognostico = prognosticoController.text;
      pacienteAtual.procedimentos = procedimentosProvController.text;

      updatePaciente(pacienteAtual);

      isLoading.value = false;
    }
  }

  Future<void> atualizarHistorico() async {
    if (nomeController.text.length > 3) {
      isLoading.value = true;

      pacienteAtual.queixaFuncionalidade = queixaController.text;
      pacienteAtual.historiaAtual = historiaAtualController.text;
      pacienteAtual.historiaPregressa = historiaPregressalController.text;
      pacienteAtual.habitosVida = habitosController.text;
      pacienteAtual.tratamentosRealizados = tratamentosController.text;
      pacienteAtual.antecedentes = antecedentesController.text;

      updatePaciente(pacienteAtual);

      isLoading.value = false;
    }
  }

  Future<void> getPacientes() async {
    isLoading.value = true;
    final List<Map<String, dynamic>> maps = await db.query('Pacientes');
    pacientes.value = List.generate(maps.length, (i) {
      return PacienteModel.fromMap(maps[i]);
    });
    isLoading.value = false;
  }

  Future<void> addPaciente(PacienteModel paciente) async {
    isLoading.value = true;
    await db.insert('Pacientes', paciente.toMap());
    getPacientes();
    isLoading.value = false;
  }

  Future<void> updatePaciente(PacienteModel paciente) async {
    await db.update(
      'Pacientes',
      paciente.toMap(),
      where: 'id = ?',
      whereArgs: [paciente.id],
    );
    getPacientes();
  }

  Future<void> deletePaciente(int id) async {
    isLoading.value = true;
    await db.delete(
      'Pacientes',
      where: 'id = ?',
      whereArgs: [id],
    );
    getPacientes();
    isLoading.value = false;
  }
}
