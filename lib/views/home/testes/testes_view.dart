import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TestesView extends StatelessWidget {
  const TestesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const TestesPage();
  }
}

class TestesPage extends StatefulWidget {
  const TestesPage({super.key});

  @override
  State<TestesPage> createState() => _TestesPageState();
}

class _TestesPageState extends State<TestesPage> {
  bool add = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(
          0xFF000857,
        ),
        title: const Text(
          'Testes e escalas',
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 12,
          ),
          const Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 0,
              ),
              child: Card(
                child: Padding(
                  padding: EdgeInsets.all(
                    12,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 3,
                        child: Text(
                          'Titulo',
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Text(
                          'Indicação',
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Text(
                          'Detalhes',
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Icon(
                            Icons.delete,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 14,
            child: Padding(
              padding: const EdgeInsets.all(
                12,
              ),
              child: Column(
                children: [
                  if (add)
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          children: [
                            const Expanded(
                              flex: 3,
                              child: Text(
                                'Nada aqui ainda',
                              ),
                            ),
                            const Expanded(
                              flex: 3,
                              child: Text(
                                'Loren Ipsun Dolor Amethist',
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      Get.to(
                                        () => const DetalhesPage(),
                                      );
                                    },
                                    child: const Icon(
                                      Icons.info_outline,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const Expanded(
                              flex: 1,
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: Icon(
                                  Icons.close,
                                  color: Colors.red,
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
        ],
      ),
    );
  }
}

class DetalhesPage extends StatefulWidget {
  const DetalhesPage({super.key});

  @override
  State<DetalhesPage> createState() => _DetalhesPageState();
}

class _DetalhesPageState extends State<DetalhesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(
          0xFF000857,
        ),
        title: const Text(
          'Avaliação Fisioterapêutica',
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
                Column(
                  children: [
                    TextField(
                      controller:
                          TextEditingController(text: '''Velocidade da Marcha


 Espaço de até 10 metros
  Quatro demarcações que  devem ser visíveis: A primeira é o ponto de partida; a segunda,  após a distancia de 2 metros, é o final da aceleração; a  terceira após a distancia de 5 metros, é o tempo válido para  avaliação do teste e início da desaceleração, a quarta após a  distancia de 2 metros, é o final da desaceleração e ponto de  chegada;
  O idoso deve realizar a  caminhada no seu ritmo normal;
  Tempo cronometrado deve ser  entre a segunda e terceira demarcação e deve-se calcular a média  dos resultados obtidos em três tentativas.
  O tempo médio menor que 0,8  m/s indica dificuldade na marcha e risco de queda.'''),
                      decoration: InputDecoration(
                        hintText: 'Digite a Queixa de Funcionalidade',
                        label: Text(
                          'Queixa de funcionalidade',
                        ),
                        border: OutlineInputBorder(),
                      ),
                      maxLines: null,
                      minLines: 35,
                    ),
                  ],
                ),

                // Botões
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
