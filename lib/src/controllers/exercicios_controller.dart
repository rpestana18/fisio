import 'package:get/get.dart';

import '../models/exercicio_model.dart';

class ExerciciosController extends GetxController {
  var exercicios = <ExercicioModel>[].obs;

  @override
  void onInit() {
    exercicios.addAll([
      ExercicioModel(
        titulo: 'Flexão de quadril com joelho em extensão',
        indicacao: 'INDICAÇÃO',
        detalhes: 'Detalhes do exercicio X',
        imagem: 'lib/images/exercicios/fotos/EXERCICIO 1A.jpg',
        video: 'lib/images/exercicios/videos/1.gif',
      ),
      ExercicioModel(
        titulo: 'Extensão de joelho',
        indicacao: 'INDICAÇÃO',
        detalhes: 'Detalhes do exercicio X',
        imagem: 'lib/images/exercicios/fotos/EXERCICIO 2A.jpg',
        video: 'lib/images/exercicios/videos/2.gif',
      ),
      ExercicioModel(
        titulo: 'Flexão de joelho',
        indicacao: 'INDICAÇÃO',
        detalhes: 'Detalhes do exercicio X',
        imagem: 'lib/images/exercicios/fotos/EXERCICIO 3A.jpg',
        video: 'lib/images/exercicios/videos/3.gif',
      ),
      ExercicioModel(
        titulo: 'Abdução de quadril',
        indicacao: 'INDICAÇÃO',
        detalhes: 'Detalhes do exercicio X',
        imagem: 'lib/images/exercicios/fotos/EXERCICIO 4A.jpg',
        video: 'lib/images/exercicios/videos/4.gif',
      ),
      ExercicioModel(
        titulo: 'Sentar e levantar',
        indicacao: 'INDICAÇÃO',
        detalhes: 'Detalhes do exercicio X',
        imagem: 'lib/images/exercicios/fotos/EXERCICIO 5A.jpg',
        video: 'lib/images/exercicios/videos/5.gif',
      ),
      ExercicioModel(
        titulo: 'Marcha estacionária',
        indicacao: 'INDICAÇÃO',
        detalhes: 'Detalhes do exercicio X',
        imagem: 'lib/images/exercicios/fotos/EXERCICIO 6A.jpg',
        video: 'lib/images/exercicios/videos/6.gif',
      ),
      ExercicioModel(
        titulo: 'Flexão lateral de tronco',
        indicacao: 'INDICAÇÃO',
        detalhes: 'Detalhes do exercicio X',
        imagem: 'lib/images/exercicios/fotos/EXERCICIO 7A.jpg',
        video: 'lib/images/exercicios/videos/7.gif',
      ),
      ExercicioModel(
        titulo: 'Alcance com membros superiores em direções na posição sentada',
        indicacao: 'INDICAÇÃO',
        detalhes: 'Detalhes do exercicio X',
        imagem: 'lib/images/exercicios/fotos/EXERCICIO 8A.jpg',
        video: 'lib/images/exercicios/videos/8.gif',
      ),
      ExercicioModel(
        titulo:
            'Alcance com membros superiores em direções na posição orostática',
        indicacao: 'INDICAÇÃO',
        detalhes: 'Detalhes do exercicio X',
        imagem: 'lib/images/exercicios/fotos/EXERCICIO 9A.jpg',
        video: 'lib/images/exercicios/videos/9.gif',
      ),
      ExercicioModel(
        titulo: 'Sentar e levantar com alcance em membros superiores',
        indicacao: 'INDICAÇÃO',
        detalhes: 'Detalhes do exercicio X',
        imagem: 'lib/images/exercicios/fotos/EXERCICIO 10A.jpg',
        video: 'lib/images/exercicios/videos/10.gif',
      ),
      ExercicioModel(
        titulo: 'Sentar e levantar passo a frente',
        indicacao: 'INDICAÇÃO',
        detalhes: 'Detalhes do exercicio X',
        imagem: 'lib/images/exercicios/fotos/EXERCICIO 11A.jpg',
        video: 'lib/images/exercicios/videos/11.gif',
      ),
      ExercicioModel(
        titulo: 'Apoio unipodal dinâmico',
        indicacao: 'INDICAÇÃO',
        detalhes: 'Detalhes do exercicio X',
        imagem: 'lib/images/exercicios/fotos/EXERCICIO 12A.jpg',
        video: 'lib/images/exercicios/videos/12.gif',
      ),
      ExercicioModel(
        titulo:
            'Mobilidade de MMSS e estabilidade de tronco na posição orostática',
        indicacao: 'INDICAÇÃO',
        detalhes: 'Detalhes do exercicio X',
        imagem: 'lib/images/exercicios/fotos/EXERCICIO 13A.jpg',
        video: 'lib/images/exercicios/videos/13.gif',
      ),
      ExercicioModel(
        titulo: 'Marcha lateral com abdução do MMS',
        indicacao: 'INDICAÇÃO',
        detalhes: 'Detalhes do exercicio X',
        imagem: 'lib/images/exercicios/fotos/EXERCICIO 14A.jpg',
        video: 'lib/images/exercicios/videos/14.gif',
      ),
      ExercicioModel(
        titulo: 'Passos multidirecionais',
        indicacao: 'INDICAÇÃO',
        detalhes: 'Detalhes do exercicio X',
        imagem: 'lib/images/exercicios/fotos/EXERCICIO 15A.jpg',
        video: 'lib/images/exercicios/videos/15.gif',
      ),
      ExercicioModel(
        titulo: 'Marcha em Zig Zag',
        indicacao: 'INDICAÇÃO',
        detalhes: 'Detalhes do exercicio X',
        imagem: 'lib/images/exercicios/fotos/EXERCICIO 16A.jpg',
        video: 'lib/images/exercicios/videos/16.gif',
      ),
      ExercicioModel(
        titulo: 'Marcha posterior',
        indicacao: 'INDICAÇÃO',
        detalhes: 'Detalhes do exercicio X',
        imagem: 'lib/images/exercicios/fotos/EXERCICIO 17A.jpg',
        video: 'lib/images/exercicios/videos/17.gif',
      ),
      ExercicioModel(
        titulo: 'Subir e descer do step com alcance da MMMS',
        indicacao: 'INDICAÇÃO',
        detalhes: 'Detalhes do exercicio X',
        imagem: 'lib/images/exercicios/fotos/EXERCICIO 18A.jpg',
        video: 'lib/images/exercicios/videos/18.gif',
      ),
      ExercicioModel(
        titulo: 'Marcha na escada de agilidade (Entrar e sair)',
        indicacao: 'INDICAÇÃO',
        detalhes: 'Detalhes do exercicio X',
        imagem: 'lib/images/exercicios/fotos/EXERCICIO 19A.jpg',
        video: 'lib/images/exercicios/videos/19.gif',
      ),
      ExercicioModel(
        titulo: 'Marcha na escada de agilidade e apoio unipodal',
        indicacao: 'INDICAÇÃO',
        detalhes: 'Detalhes do exercicio X',
        imagem: 'lib/images/exercicios/fotos/EXERCICIO 20A.jpg',
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
