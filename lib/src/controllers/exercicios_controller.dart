import 'package:get/get.dart';

import '../models/exercicio_model.dart';

class ExerciciosController extends GetxController {
  var exercicios = <ExercicioModel>[].obs;

  @override
  void onInit() {
    exercicios.addAll([
      ExercicioModel(
        titulo: 'Flexão de quadril com joelho em extensão',
        indicacao: 'Fortalecimento',
        detalhes: 'Posição: Paciente em decúbito dorsal, 1 membro inferior com joelho flexionado e pé '
            'apoiado e o membro contra lateral com o joelho em extensão.\n\n'
            'Movimento: realizar flexão de quadril com joelho em extensão e retornar à posição inicial.\n\n'
            'Variações: o exercício pode ser realizado com caneleiras ou faixa elástica.\n\n'
            'Material sugerido: Caneleira ou faixa elástica.',
        imagem: 'lib/images/exercicios/fotos/1A.jpg',
        video: 'lib/images/exercicios/videos/1.gif',
      ),
      ExercicioModel(
        titulo: 'Extensão de joelho',
        indicacao: 'Fortalecimento',
        detalhes: 'Posição: sentada com apoio dorsal e com os pés apoiados.\n\n'
            'Movimento: realizar extensão de joelho e retornar à posição inicial.\n\n'
            'Variações: o exercício pode ser realizado com o paciente sentado sem apoio dorsal, '
            'com o paciente utilizando caneleiras ou faixa elástica e o movimento pode ser realizado com os dois membros ao mesmo tempo.\n\n'
            'Material sugerido: Cadeira, caneleira ou faixa elástica.',
        imagem: 'lib/images/exercicios/fotos/2A.jpg',
        video: 'lib/images/exercicios/videos/2.gif',
      ),
      ExercicioModel(
        titulo: 'Flexão de joelho',
        indicacao: 'Fortalecimento',
        detalhes: 'Posição: Em postura ortostática, membros inferiores alinhados e mãos apoiadas.\n\n'
            'Movimento: Realizar flexão de joelho, levando o calcanhar em direção ao glúteo e retornar à posição inicial.\n\n'
            'Variações: o exercício pode ser realizado com caneleiras ou faixa elástica.\n\n'
            'Material sugerido: Caneleira ou faixa elástica.',
        imagem: 'lib/images/exercicios/fotos/3A.jpg',
        video: 'lib/images/exercicios/videos/3.gif',
      ),
      ExercicioModel(
        titulo: 'Abdução de quadril',
        indicacao: 'Fortalecimento',
        detalhes: 'Posição: Em postura ortostática, membros inferiores alinhados e mãos apoiadas.\n\n'
            'Movimento: Realizar abdução de quadril e retornar à posição inicial.\n\n'
            'Variações: o exercício pode ser realizado com caneleiras ou faixa elástica.\n\n'
            'Material sugerido: Caneleira ou faixa elástica.',
        imagem: 'lib/images/exercicios/fotos/4A.jpg',
        video: 'lib/images/exercicios/videos/4.gif',
      ),
      ExercicioModel(
        titulo: 'Sentar e levantar',
        indicacao: 'Fortalecimento',
        detalhes: 'Posição: sentada com os pés apoiados.\n\n'
            'Movimento: levantar-se e retornar à posição inicial.\n\n'
            'Variações: o exercício pode ser realizado com o paciente segurando halter, segurando bola, com caneleira no punho e segurando bola ou com apoio.\n\n'
            'Material sugerido: halter, caneleira ou bola.',
        imagem: 'lib/images/exercicios/fotos/5A.jpg',
        video: 'lib/images/exercicios/videos/5.gif',
      ),
      ExercicioModel(
        titulo: 'Marcha estacionária',
        indicacao: 'Fortalecimento e coordenação',
        detalhes: 'Posição: Em pé'
            'Movimento: Sem sair do lugar, simular uma caminhada alternando o movimento dos membros superiores e membros inferiores.\n\n'
            'Variações: o exercício pode ser realizado com caneleiras.\n\n'
            'Material sugerido: caneleira.',
        imagem: 'lib/images/exercicios/fotos/6A.jpg',
        video: 'lib/images/exercicios/videos/6.gif',
      ),
      ExercicioModel(
        titulo: 'Flexão lateral de tronco',
        indicacao: 'Fortalecimento e coordenação',
        detalhes: 'Posição: sentada com apoio dorsal, membros superiores cruzados à frente do tronco e pés apoiados.\n\n'
            'Movimento: Realizar flexão lateral de tronco e retornar à posição inicial.\n\n'
            'Variações: o paciente pode sentar ou apoiar os pés em superfície instável.\n\n'
            'Material sugerido: halter para MMSS.',
        imagem: 'lib/images/exercicios/fotos/7A.jpg',
        video: 'lib/images/exercicios/videos/7.gif',
      ),
      ExercicioModel(
        titulo: 'Alcance com membros superiores em direções na posição sentada',
        indicacao: 'Multicomponentes',
        detalhes: 'Posição: sentada com apoio dorsal, dedos das mãos entrelaçados e os pés apoiados.\n\n'
            'Movimento: levar a bola até o objeto de alcance que deverá estar em posições diferentes.\n\n'
            'Variações: o paciente pode sentar ou apoiar os pés em superfície instável e pode ser colocada uma caneleira no punho do paciente. '
            'Caso os objetos tenham cores diferentes, o paciente pode realizar o alcance de acordo com o comando do terapeuta.\n\n'
            'Material sugerido: bola, cones, chapéu chinês, caneleira.',
        imagem: 'lib/images/exercicios/fotos/8A.jpg',
        video: 'lib/images/exercicios/videos/8.gif',
      ),
      ExercicioModel(
        titulo:
            'Alcance com membros superiores em direções na posição orostática',
        indicacao: 'Multicomponentes',
        detalhes: 'Posição: posição de tandem e dedos das mãos entrelaçando.\n\n'
            'Movimento: levar as mãos até o objeto de alcance que deverá estar em posições diferentes.\n\n'
            'Variações: pode ser colocada uma caneleira no punho do paciente. Caso os objetos tenham cores diferentes, '
            'o paciente pode realizar o alcance de acordo com o comando do terapeuta.\n\n'
            'Material sugerido: chapéu chinês, caneleira.',
        imagem: 'lib/images/exercicios/fotos/9A.jpg',
        video: 'lib/images/exercicios/videos/9.gif',
      ),
      ExercicioModel(
        titulo: 'Sentar e levantar com alcance em membros superiores',
        indicacao: 'Multicomponentes',
        detalhes: 'Posição: sentada com os pés apoiados e dedos das mãos entrelaçados.\n\n'
            'Movimento: levantar-se, realizar o alcance com os membros superiores e retornar à posição inicial.\n\n'
            'Variações: o exercício pode ser realizado com o paciente segurando bola, com caneleira no punho e segurando bola.\n\n'
            'Material sugerido: caneleira, bola, cones e chapéu chinês.',
        imagem: 'lib/images/exercicios/fotos/10A.jpg',
        video: 'lib/images/exercicios/videos/10.gif',
      ),
      ExercicioModel(
        titulo: 'Sentar e levantar passo a frente',
        indicacao: 'Multicomponentes',
        detalhes: 'Posição: posição sentada, braços ao longo do corpo e os pés paralelos apoiados no solo.\n\n'
            'Movimento: levantar, dar passo à frente, retornar passo e sentar.\n\n'
            'Variações: o exercício pode ser realizado com os MMSS cruzados à frente do tronco e com o paciente utilizando caneleira nos tornozelos.\n\n'
            'Material sugerido: cadeira.',
        imagem: 'lib/images/exercicios/fotos/11A.jpg',
        video: 'lib/images/exercicios/videos/11.gif',
      ),
      ExercicioModel(
        titulo: 'Apoio unipodal dinâmico',
        indicacao: 'Multicomponentes',
        detalhes: 'Posição: posição ortostática, braços ao longo do corpo e os pés paralelos.\n\n'
            'Movimento: levar um membro inferior até o objeto que estará apoiado no solo à frente do paciente em posições diferentes.\n\n'
            '.Variações: o exercício pode ser realizado com o paciente utilizando caneleira; '
            'os objetos podem ser coloridos e o paciente alcança-los de acordo com o comando do terapeuta.\n\n'
            'Material sugerido: caneleira, bola, cones e chapéu chinês',
        imagem: 'lib/images/exercicios/fotos/12A.jpg',
        video: 'lib/images/exercicios/videos/12.gif',
      ),
      ExercicioModel(
        titulo:
            'Mobilidade de MMSS e estabilidade de tronco na posição orostática',
        indicacao: 'Multicomponentes',
        detalhes: 'Posição: posição de tandem, braços ao longo do corpo.\n\n'
            'Movimento: na posição de Tandem, realizar flexão e extensão de ombros com cotovelos em extensão bilateral e retornar à posição inicial.\n\n'
            'Variações: o exercício pode ser realizado com o paciente segurando bola, com caneleira ou com caneleira no punho e segurando bola.\n\n'
            'Material sugerido: caneleira e bola.',
        imagem: 'lib/images/exercicios/fotos/13A.jpg',
        video: 'lib/images/exercicios/videos/13.gif',
      ),
      ExercicioModel(
        titulo: 'Marcha lateral com abdução do MMS',
        indicacao: 'Multicomponentes',
        detalhes: 'Posição: postura ortostática com pés paralelos.\n\n'
            'Movimento: realizar marcha lateral associado à abdução dos MMSS.\n\n'
            'Variações: o exercício pode ser realizado com o paciente utilizando uma faixa elástica na altura dos joelhos ou tornozelos; '
              'pode ser realizado com o terapeuta dando apoio de MMSS para o paciente; pode ser realizado também com o paciente ultrapassando obstáculos.\n\n'
            'Material sugerido: caneleira, cones e chapéu chinês.',
        imagem: 'lib/images/exercicios/fotos/14A.jpg',
        video: 'lib/images/exercicios/videos/14.gif',
      ),
      ExercicioModel(
        titulo: 'Passos multidirecionais',
        indicacao: 'Multicomponentes',
        detalhes: 'Posição: postura ortostática com pés paralelos.\n\n'
            'Movimento: O paciente deverá realizar um passo de acordo com o comando do terapeuta, na direção do objeto que estará apoiado no solo, por exemplo: '
              '“atrás”, “frente”, “direita" e “esquerda”.\n\n'
              'Variações: os objetos podem ser coloridos e o comando pode ser de acordo com as cores dos mesmos; '
              'o paciente pode realizar o exercício utilizando caneleira nos tornozelos.\n\n'
            'Material sugerido: caneleira, bola, cones e chapéu chinês',
        imagem: 'lib/images/exercicios/fotos/15B.jpg',
        video: 'lib/images/exercicios/videos/15.gif',
      ),
      ExercicioModel(
        titulo: 'Marcha em Zig Zag',
        indicacao: 'Multicomponentes',
        detalhes: 'Posição: posição ortostática, braços ao longo do corpo e os pés paralelos.\n\n'
            'Movimento: paciente deverá realizar marcha em zig zag passando entre os objetos.\n\n'
            'Variações: o exercício pode ser realizado com o paciente utilizando caneleira nos tornozelos; os objetos podem estar em distâncias diferentes.\n\n'
            'Material sugerido: caneleira, bola, cones e chapéu chinês.',
        imagem: 'lib/images/exercicios/fotos/16A.jpg',
        video: 'lib/images/exercicios/videos/16.gif',
      ),
      ExercicioModel(
        titulo: 'Marcha posterior',
        indicacao: 'Multicomponentes',
        detalhes: 'Posição: postura ortostática com pés paralelos.\n\n'
            'Movimento: O paciente, ao lado de uma parede ou barra de apoio e com supervisão do terapeuta deverá realizar marcha posterior.\n\n'
            'Variações: o paciente poderá apoiar a mão na parede, na barra ou na mão do terapeuta. '
              'O passo pode ser realizado na ponta dos pés e pode utilizar caneleira.\n\n'
            'Material sugerido: barra de apoio e caneleira',
        imagem: 'lib/images/exercicios/fotos/17A.jpg',
        video: 'lib/images/exercicios/videos/17.gif',
      ),
      ExercicioModel(
        titulo: 'Subir e descer do step com alcance da MMMS',
        indicacao: 'Multicomponentes',
        detalhes: 'Posição: postura ortostática com pés paralelos.\n\n'
            'Movimento: O paciente deverá subir no step e realizar alcance de objeto com MMSS e retornar à posição inicial.\n\n'
            'Variações: o paciente poderá ficar com um pé parado no step e realizar com o outro o movimento de subir e descer. '
              'O paciente pode utilizar caneleiras nos tornozelos. Os objetos podem ficar em alturas diferentes.\n\n'
            'Material sugerido: Step, caneleiras.',
        imagem: 'lib/images/exercicios/fotos/18A.jpg',
        video: 'lib/images/exercicios/videos/18.gif',
      ),
      ExercicioModel(
        titulo: 'Marcha na escada de agilidade (Entrar e sair)',
        indicacao: 'Multicomponentes',
        detalhes: 'Posição: postura ortostática com pés paralelos.\n\n'
            'Movimento: O paciente deverá dar um passo à frente, dentro do espaço da escada de agilidade e depois pisar do lado de fora (um pé em cada lateral da escada), '
              'depois pisar no espaço à frente da escada de agilidade. Deverá realizar esse movimento até o final da escada.\n\n'
            'Variações: O paciente pode utilizar caneleiras nos tornozelos. Os espaços da escada podem ter tamanhos diferentes.\n\n'
            'Material sugerido: escada de agilidade e caneleira.',
        imagem: 'lib/images/exercicios/fotos/19A.jpg',
        video: 'lib/images/exercicios/videos/19.gif',
      ),
      ExercicioModel(
        titulo: 'Marcha na escada de agilidade e apoio unipodal',
        indicacao: 'Multicomponentes',
        detalhes: 'Posição: postura ortostática com pés paralelos.\n\n'
            'Movimento: O paciente deverá dar um passo à frente, dentro do espaço da escada de agilidade e colocar o pé no objeto que estará na lateral da escada. '
              'Para cada espaço terá um objeto no lado esquerdo ou direito. Deverá realizar esse movimento até o final da escada.\n\n'
            'Variações: o paciente poderá segurar um objeto. O paciente poderá utilizar caneleiras nos tornozelos. Os espaços da escada podem ter tamanhos diferentes.\n\n'
            'Material sugerido: escada de agilidade, bola e caneleira.',
        imagem: 'lib/images/exercicios/fotos/20A.jpg',
        video: 'lib/images/exercicios/videos/20.gif',
      ),
    ]);

    super.onInit();
  }

  void addExercicio(ExercicioModel exercicio) {
    exercicios.add(exercicio);
  }

  void removeExercicio(int index) {
    exercicios.removeAt(index);
  }
}
