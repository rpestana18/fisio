import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:fisioterapia/views/home/testes/testes_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:table_calendar/table_calendar.dart';

import 'auth/auth_view.dart';
import 'home/avaliacao/avaliacao_view.dart';
import 'home/exercicios/exercicios_view.dart';
import 'home/prontuarios/prontuarios_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(
          0xFF000857,
        ),
        title: const Text(
          'Bem vindo, João Victor!',
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(
            12.0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              TableCalendar(
                firstDay: DateTime.utc(
                  2010,
                  10,
                  16,
                ),
                lastDay: DateTime.utc(
                  2030,
                  3,
                  14,
                ),
                focusedDay: DateTime.now(),
              ),
              Column(
                children: [
                  SizedBox(
                    height: Get.height * 0.35,
                    width: Get.width * 0.95,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Column(
                            children: <Widget>[
                              Expanded(
                                child: SizedBox(
                                  height: 48,
                                  width: double.infinity,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: const Color(
                                        0xFF000857,
                                      ),
                                    ),
                                    onPressed: () {
                                      Get.to(
                                        () => const AvaliacaoView(),
                                      );
                                    },
                                    child: const Text(
                                      'Avaliação fisioterapêutica',
                                      style: TextStyle(
                                        fontSize: 18,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: Get.height * 0.015,
                              ),
                              Expanded(
                                child: SizedBox(
                                  height: 48,
                                  width: double.infinity,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: const Color(
                                        0xFF000857,
                                      ),
                                    ),
                                    onPressed: () {
                                      Get.to(
                                        () => const ProntuariosView(),
                                      );
                                    },
                                    child: const Text(
                                      'Prontuarios',
                                      style: TextStyle(
                                        fontSize: 18,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: Get.height * 0.015,
                        ),
                        Expanded(
                          flex: 1,
                          child: Column(
                            children: <Widget>[
                              Expanded(
                                child: SizedBox(
                                  height: 48,
                                  width: double.infinity,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: const Color(
                                        0xFF000857,
                                      ),
                                    ),
                                    onPressed: () {
                                      Get.to(
                                        () => const TestesView(),
                                      );
                                    },
                                    child: const Text(
                                      'Testes e escalas',
                                      style: TextStyle(
                                        fontSize: 18,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: Get.height * 0.015,
                              ),
                              Expanded(
                                child: SizedBox(
                                  height: 48,
                                  width: double.infinity,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: const Color(
                                        0xFF000857,
                                      ),
                                    ),
                                    onPressed: () {
                                      Get.to(
                                        () => const ExerciciosView(),
                                      );
                                    },
                                    child: const Text(
                                      'Exercícios',
                                      style: TextStyle(
                                        fontSize: 18,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: Get.height * 0.065,
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(
                          0xFFF85509,
                        ),
                      ),
                      onPressed: () {
                        AwesomeDialog(
                          context: context,
                          dialogType: DialogType.error,
                          animType: AnimType.rightSlide,
                          title: 'Fazer logout',
                          desc: 'Você tem certeza que deseja sair?',
                          btnCancelOnPress: () {},
                          btnOkOnPress: () {
                            Get.offAll(
                              const AuthView(),
                            );
                          },
                        ).show();
                      },
                      child: const Text(
                        'Sair',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// SizedBox(
//                  height: 48,
//                  width: double.infinity,
//                  child: ElevatedButton(
//                    style: ElevatedButton.styleFrom(
//                      backgroundColor: const Color(
//                        0xFF000857,
//                      ),
//                    ),
//                    onPressed: () {
//                      Get.to(
//                        () => const AvaliacaoView(),
//                      );
//                    },
//                    child: const Text(
//                      'Avaliação fisiaoterapêutiaca',
//                      style: TextStyle(
//                        fontSize: 15,
//                      ),
//                    ),
//                  ),
//                ),

// SizedBox(
//   height: 48,
//   width: double.infinity,
//   child: ElevatedButton(
//     style: ElevatedButton.styleFrom(
//       backgroundColor: const Color(
//         0xFF000857,
//       ),
//     ),
//     onPressed: () {
//       Get.to(
//         () => const ProntuariosView(),
//       );
//     },
//     child: const Text(
//       'Prontuarios',
//       style: TextStyle(
//         fontSize: 15,
//       ),
//     ),
//   ),
// ),

//                   SizedBox(
//                     height: 48,
//                     width: double.infinity,
//                     child: ElevatedButton(
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: const Color(
//                           0xFF000857,
//                         ),
//                       ),
//                       onPressed: () {
//                         Get.to(
//                           () => const TestesView(),
//                         );
//                       },
//                       child: const Text(
//                         'Escalas',
//                         style: TextStyle(
//                           fontSize: 15,
//                         ),
//                       ),
//                     ),
//                   ),

//                   SizedBox(
//                     height: 48,
//                     width: double.infinity,
//                     child: ElevatedButton(
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: const Color(
//                           0xFF000857,
//                         ),
//                       ),
//                       onPressed: () {
//                         Get.to(
//                           () => const ExerciciosView(),
//                         );
//                       },
//                       child: const Text(
//                         'Exercícios',
//                         style: TextStyle(
//                           fontSize: 15,
//                         ),
//                       ),
//                     ),
//                   ),
