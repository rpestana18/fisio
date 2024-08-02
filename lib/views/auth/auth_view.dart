import 'package:fisioterapia/views/auth/register_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'login_view.dart';

class AuthView extends StatelessWidget {
  const AuthView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(
          0xFF000857,
        ),
        title: const Text(
          'Termo de utilização',
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(
            16.0,
          ),
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 5,
                child: Card(
                  child: ListView(
                    padding: const EdgeInsets.all(
                      16,
                    ),
                    children: const [
                      Text(
                        '''Termo de Aceite para Uso de Aplicativos
1. Aceitação dos Termos
Ao utilizar o aplicativo [Nome do Aplicativo], você concorda com os termos e condições estabelecidos neste Termo de Aceite. Se você não concorda com qualquer parte destes termos, não deve utilizar o aplicativo.
2. Definições
· Aplicativo: Refere-se ao software móvel [Nome do Aplicativo] fornecido pela [Nome da Empresa].
· Usuário: Qualquer pessoa que utilize o aplicativo.
· Serviço: Todas as funcionalidades e serviços oferecidos através do aplicativo.
3. Licença de Uso
O [Nome da Empresa] concede ao usuário uma licença limitada, não exclusiva e intransferível para usar o aplicativo de acordo com estes termos.
4. Uso do Aplicativo
· Elegibilidade: O usuário deve ter pelo menos 18 anos de idade para usar o aplicativo.
· Cadastro: Alguns serviços podem exigir cadastro. O usuário deve fornecer informações precisas e atualizadas.
· Responsabilidades: O usuário é responsável pela segurança das suas credenciais de acesso e pelo uso adequado do aplicativo.
5. Privacidade e Dados
O [Nome da Empresa] coleta, usa e protege os dados pessoais do usuário conforme descrito na nossa [Política de Privacidade]. Ao aceitar estes termos, o usuário também concorda com a nossa Política de Privacidade.
6. Propriedade Intelectual
Todos os direitos de propriedade intelectual relacionados ao aplicativo, incluindo design, funcionalidades e conteúdo, pertencem ao [Nome da Empresa]. O usuário não tem permissão para copiar, modificar, distribuir ou vender qualquer parte do aplicativo.
7. Limitação de Responsabilidade
O [Nome da Empresa] não se responsabiliza por danos diretos, indiretos, incidentais ou consequenciais resultantes do uso ou da incapacidade de usar o aplicativo.
8. Modificações dos Termos
O [Nome da Empresa] reserva-se o direito de modificar estes termos a qualquer momento. As alterações entrarão em vigor imediatamente após a publicação no aplicativo. O uso contínuo do aplicativo após a alteração dos termos constitui aceitação das novas condições.
9. Rescisão
O [Nome da Empresa] pode rescindir ou suspender o acesso do usuário ao aplicativo a qualquer momento, sem aviso prévio, se acreditar que o usuário violou estes termos.
10. Lei Aplicável
Estes termos serão regidos e interpretados de acordo com as leis do [País/Estado], sem considerar os princípios de conflito de leis.
11. Contato
Para dúvidas ou preocupações sobre estes termos, entre em contato com [Informações de Contato].

Ao clicar em "Aceito", você reconhece que leu, entendeu e concorda em ficar vinculado a estes termos e condições.

Este termo de aceite é essencial para proteger tanto o provedor do aplicativo quanto os usuários, estabelecendo claramente as responsabilidades e direitos de cada parte.''',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 48,
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(
                            0xFFF85509,
                          ),
                        ),
                        onPressed: () {
                          Get.to(
                            () => LoginView(),
                          );
                        },
                        child: const Text(
                          'Entrar',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
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
                            () => const RegisterView(),
                          );
                        },
                        child: const Text(
                          'Criar conta',
                          style: TextStyle(
                            fontSize: 15,
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
      ),
    );
  }
}
