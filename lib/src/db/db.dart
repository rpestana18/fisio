import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DB {
  /// Singleton
  DB._();
  static final DB instance = DB._();
  static Database? _database;

  Future<Database> get database async {
    if (_database != null) return _database!;

    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    return await openDatabase(
      join(await getDatabasesPath(), 'fisioterapia.db'),
      version: 1,
      onCreate: _onCreate,
    );
  }

  Future<void> _onCreate(Database db, int version) async {
    await db.execute(_conta);
    await db.execute(_pacientes);
    await db.execute(_exercicios);
    await db.execute(_testes);
  }

  String get _conta => '''
      CREATE TABLE Conta (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        nome TEXT NOT NULL
      );
  ''';

  String get _pacientes => '''
      CREATE TABLE Pacientes (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        nome TEXT NOT NULL,
        situacao TEXT NOT NULL,
        nascimento TEXT,
        email TEXT,
        telefone TEXT,
        avaliacao TEXT,
        queixa_funcionalidade TEXT,
        historia_atual TEXT,
        historia_pregressa TEXT,
        habitos_vida TEXT,
        tratamentos_realizados TEXT,
        antecedentes TEXT,
        evolucao TEXT,
        pressao_arterial TEXT,
        frequencia_cardiaca TEXT,
        estratificacao_risco TEXT,
        testes_complementares TEXT,
        exames_complementares TEXT,
        diagnostico_fisioterapeutico TEXT,
        prognostico TEXT,
        objetivos INTEGER,
        procedimentos TEXT,
        qtd_atendimentos INTEGER,
        exercicios INTEGER
      );
  ''';

  String get _exercicios => '''
      CREATE TABLE Exercicios (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        nome TEXT NOT NULL,
        descricao TEXT
      );
  ''';

  String get _testes => '''
      CREATE TABLE Testes (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        nome TEXT NOT NULL,
        descricao TEXT
      );
  ''';
}
