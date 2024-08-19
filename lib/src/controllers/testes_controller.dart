import 'package:get/get.dart';

import '../models/teste_model.dart';

class TestesController extends GetxController {

  var testes = <TesteModel>[].obs;


  @override
  void onInit() {
    testes.addAll([

      TesteModel(
        titulo: 'Teste Velocidade da Marcha',
        indicacao: 'Locomoção',
        detalhes: '    • Quatro demarcações que devem ser visíveis: A primeira é o ponto de partida; a segunda, após a distancia de 2 metros, é o final da aceleração; a terceira após a distancia de 5 metros, é o tempo válido para avaliação do teste e início da desaceleração, a quarta após a distancia de 2 metros, é o final da desaceleração e ponto de chegada.\n\n'
            '• O idoso deve realizar a caminhada no seu ritmo normal;.\n\n'
            '• Tempo cronometrado deve ser entre a segunda e terceira demarcação e deve-se calcular a média dos resultados obtidos em três tentativas.\n\n'
            '• O tempo médio menor que 0,8 m/s indica dificuldade na marcha e risco de queda. ',
        imagem: 'lib/images/testes/marcha.jpg',
      ),
      TesteModel(
        titulo: 'Time Up and Go Test (TUGT)',
        indicacao: 'Locomoção',
        detalhes: 'paciente sentado em uma cadeira padronizada (assento a 42 centímetros do solo, costas a 79 centímetros do solo e braço a 60 centímetros do solo), com braços e tronco apoiados.\n\n'
            'Após o comando verbal, dado pelo fisioterapeuta, o paciente deverá caminhar por três metros, em linha reta, girar 180 graus, retornar e sentar-se na cadeira.\n\n'
            'O tempo necessário para realizar a tarefa é registrado em segundos. '
            'O profissional deverá acionar o cronômetro  assim que der o comando verbal e pausar assim que o paciente sentar e apoiar os braços. O valor preditivo é de 12,47 segundos, O tempo acima do limite estabelecido  indica limitação na mobilidade e risco de queda.',
        imagem: 'lib/images/testes/tug.jpg',
      )
    ]);

    super.onInit();
  }


  void addTeste(TesteModel test) {
    testes.add(test);
  }

  void removeTeste(int index) {
    testes.removeAt(index);
  }


}