class PacienteModel {
  int? id;
  String nome;
  String situacao;
  String? nascimento;
  String? email;
  String? telefone;
  String? avaliacao;
  String? queixaFuncionalidade;
  String? historiaAtual;
  String? historiaPregressa;
  String? habitosVida;
  String? tratamentosRealizados;
  String? antecedentes;
  String? evolucao;
  String? pressaoArterial;
  String? frequenciaCardiaca;
  String? estratificacaoRisco;
  String? testesComplementares;
  String? examesComplementares;
  String? diagnosticoFisioterapeutico;
  String? prognostico;
  int? objetivos;
  String? procedimentos;
  int? qtdAtendimentos;
  int? exercicios;

  PacienteModel({
    this.id,
    required this.nome,
    required this.situacao,
    this.nascimento,
    this.email,
    this.telefone,
    this.avaliacao,
    this.queixaFuncionalidade,
    this.historiaAtual,
    this.historiaPregressa,
    this.habitosVida,
    this.tratamentosRealizados,
    this.antecedentes,
    this.evolucao,
    this.pressaoArterial,
    this.frequenciaCardiaca,
    this.estratificacaoRisco,
    this.testesComplementares,
    this.examesComplementares,
    this.diagnosticoFisioterapeutico,
    this.prognostico,
    this.objetivos,
    this.procedimentos,
    this.qtdAtendimentos,
    this.exercicios,
  });

  factory PacienteModel.fromMap(Map<String, dynamic> json) => PacienteModel(
    id: json['id'],
    nome: json['nome'],
    situacao: json['situacao'],
    nascimento: json['nascimento'],
    email: json['email'],
    telefone: json['telefone'],
    avaliacao: json['avaliacao'],
    queixaFuncionalidade: json['queixa_funcionalidade'],
    historiaAtual: json['historia_atual'],
    historiaPregressa: json['historia_pregressa'],
    habitosVida: json['habitos_vida'],
    tratamentosRealizados: json['tratamentos_realizados'],
    antecedentes: json['antecedentes'],
    evolucao: json['evolucao'],
    pressaoArterial: json['pressao_arterial'],
    frequenciaCardiaca: json['frequencia_cardiaca'],
    estratificacaoRisco: json['estratificacao_risco'],
    testesComplementares: json['testes_complementares'],
    examesComplementares: json['exames_complementares'],
    diagnosticoFisioterapeutico: json['diagnostico_fisioterapeutico'],
    prognostico: json['prognostico'],
    objetivos: json['objetivos'],
    procedimentos: json['procedimentos'],
    qtdAtendimentos: json['qtd_atendimentos'],
    exercicios: json['exercicios'],
  );

  Map<String, dynamic> toMap() => {
    'id': id,
    'nome': nome,
    'situacao': situacao,
    'nascimento': nascimento,
    'email': email,
    'telefone': telefone,
    'avaliacao': avaliacao,
    'queixa_funcionalidade': queixaFuncionalidade,
    'historia_atual': historiaAtual,
    'historia_pregressa': historiaPregressa,
    'habitos_vida': habitosVida,
    'tratamentos_realizados': tratamentosRealizados,
    'antecedentes': antecedentes,
    'evolucao': evolucao,
    'pressao_arterial': pressaoArterial,
    'frequencia_cardiaca': frequenciaCardiaca,
    'estratificacao_risco': estratificacaoRisco,
    'testes_complementares': testesComplementares,
    'exames_complementares': examesComplementares,
    'diagnostico_fisioterapeutico': diagnosticoFisioterapeutico,
    'prognostico': prognostico,
    'objetivos': objetivos,
    'procedimentos': procedimentos,
    'qtd_atendimentos': qtdAtendimentos,
    'exercicios': exercicios,
  };
}
