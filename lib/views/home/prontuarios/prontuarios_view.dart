import 'package:fisioterapia/views/home/prontuarios/pacientes_prontuarios_page.dart';
import 'package:flutter/material.dart';

class ProntuariosView extends StatelessWidget {
  const ProntuariosView({super.key});

  @override
  Widget build(BuildContext context) {
    return PacientesProntuariosPage();
  }
}

/// Fluxo
/// Pacientes -> Prontuário view -> n
