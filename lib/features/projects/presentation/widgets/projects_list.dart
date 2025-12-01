import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/responsive.dart';
import 'package:portfolio/core/utils/screen_size_helper.dart';
import 'project_card.dart';

class ProjectView {
  final String title;
  final String description;
  final List<String> images;
  final List<String> technologies;
  const ProjectView({
    required this.title,
    required this.description,
    required this.images,
    required this.technologies,
  });
}

class ProjectsList extends StatelessWidget {
  const ProjectsList({super.key});

  List<ProjectView> _data() {
    return const [
      ProjectView(
        title:
            'BarthFitness – App para gestão de treinos e serviços da academia',
        description:
            'Aplicativo mobile desenvolvido para aproximar alunos da academia e oferecer uma experiência completa de acompanhamento físico. O BarthFitness permite visualizar e controlar treinos, acompanhar evolução diária, agendar serviços ou aulas personalizadas e adquirir pacotes diretamente pelo app. O app ainda possui integração com o Instagram e Facebook permitindo publicar fotos da rotina de treinos nas redes sociais. Além disso, entrega uma navegação intuitiva e totalmente integrada às rotinas da academia. O aplicativo está em produção e publicado nas lojas Android e iOS.',
        images: [
          'images/projects/barth_fitness_app/1.png',
          'images/projects/barth_fitness_app/2.png',
          'images/projects/barth_fitness_app/3.png',
          'images/projects/barth_fitness_app/4.png',
          'images/projects/barth_fitness_app/5.png',
          'images/projects/barth_fitness_app/6.png',
          'images/projects/barth_fitness_app/7.png',
          'images/projects/barth_fitness_app/8.png',
        ],
        technologies: ['Flutter', 'Firebase', 'GraphQL', 'Instagram'],
      ),
      ProjectView(
        title:
            'BarthFitness Web – Plataforma completa de gestão para academias e studios',
        description:
            'Sistema web desenvolvido para oferecer uma administração abrangente e eficiente do ambiente fitness. A plataforma permite cadastrar clientes e funcionários com controle avançado de permissões, gerenciar treinos, aulas e serviços personalizados, registrar avaliações físicas e organizar vendas de produtos, pacotes e contratos. Também inclui ferramentas para criação de promoções e integração com catracas para controle de acesso. O BarthFitness Web entrega uma solução robusta e centralizada para academias e studios que buscam otimizar sua operação diária.',
        images: [
          'images/projects/barth_fitness/agenda.png',
          'images/projects/barth_fitness/AI_report.png',
          'images/projects/barth_fitness/contracts.png',
          'images/projects/barth_fitness/home.png',
          'images/projects/barth_fitness/payments.png',
          'images/projects/barth_fitness/training.png',
          'images/projects/barth_fitness/venda.png',
        ],
        technologies: ['Angular', 'Typescript', 'GraphQL', 'Firebase'],
      ),
      ProjectView(
        title: 'Pet+ – App para tutores de pets',
        description:
            'Aplicativo mobile desenvolvido para proporcionar uma experiência completa e diferenciada aos tutores de pets. O Pet+ exibe empresas e serviços próximos à localização do usuário, permitindo agendar atendimentos ou hospedagens em hotéis parceiros de forma prática. O app oferece ainda acompanhamento de todos os agendamentos, controle da carteira de vacinação, cadastro de animais, além de recursos para registrar e encontrar pets perdidos ou disponíveis para adoção. Com integração total a um backend próprio em Dart — incluindo autenticação JWT e envio de notificações personalizadas como aniversários, lembretes de vacinas e próximos serviços — o Pet+ entrega uma jornada moderna e intuitiva. O aplicativo está totalmente finalizado e publicado nas lojas Android e iOS.',
        images: [
          'images/projects/petmais_app/login_app.png',
          'images/projects/petmais_app/home_app.png',
          'images/projects/petmais_app/schedule_app.png',
          'images/projects/petmais_app/pet_app.png',
          'images/projects/petmais_app/schedule_detail_app.png',
          'images/projects/petmais_app/schedules_app.png',
          'images/projects/petmais_app/vaccination_app.png',
        ],
        technologies: [
          'Flutter',
          'Firebase',
          'API REST',
          'Push Notifications',
          'Geolocalização',
        ],
      ),
      ProjectView(
        title: 'Pet+ Web – Plataforma de gestão para empresas do ramo pet',
        description:
            'Plataforma web responsiva desenvolvida em Flutter Web, criada para atender empresas do setor pet. A solução permite configurar serviços, gerenciar agendamentos de atendimentos e hospedagens, cadastrar funcionários com controle avançado de permissões, registrar produtos e acompanhar o desempenho da empresa por meio de relatórios detalhados. Totalmente integrada ao backend em Dart, a Pet+ Web oferece uma gestão unificada, moderna e eficiente, simplificando as operações diárias do negócio pet.',
        images: [
          'images/projects/petmais_web/login.png',
          'images/projects/petmais_web/home.png',
          'images/projects/petmais_web/configs.png',
          'images/projects/petmais_web/schedule.png',
          'images/projects/petmais_web/reports.png',
          'images/projects/petmais_web/funcionarios.png',
        ],
        technologies: [
          'Flutter Web',
          'Firebase',
          'API REST',
          'Push Notifications',
          'AWS',
        ],
      ),
      ProjectView(
        title: 'Desconecte – Minijogos offline para conectar pessoas',
        description:
            'Desconecte é um app de minijogos e desafios criado para aproximar casais, duplas e grupos por meio de experiências rápidas, criativas e totalmente offline. Com uma interface moderna e fluida, o app traz diversas categorias de jogos — de atividades leves a dinâmicas competitivas — todas pensadas para encontros, viagens, festas ou momentos em casa. O grande diferencial do Desconecte é seu gerador interno de desafios por IA, que cria jogos personalizados conforme o contexto do usuário (vibe do encontro, tempo disponível, energia, local e faixa etária), tudo sem depender de serviços externos. Sem necessidade de cadastro, o app permite jogar instantaneamente e oferece a opção de criar conta para sincronização e assinatura.',
        images: [
          '/images/projects/desconecte/home.png',
          '/images/projects/desconecte/jogos.png',
          '/images/projects/desconecte/item.png',
          '/images/projects/desconecte/item_2.png',
        ],
        technologies: ['Flutter', 'Firebase', 'IA'],
      ),
      ProjectView(
        title: 'Quiz Faction – App oficial da Expofred',
        description:
            'Aplicativo desenvolvido para a equipe de pesquisa da UFSM-FW, utilizado na coleta de dados de frequentadores e expositores da feira Expofred. O app permite criar e preencher formulários personalizados, funciona totalmente offline durante as entrevistas e armazena os dados localmente em SQLite. Posteriormente, realiza a sincronização dos formulários com o servidor na nuvem (Firebase). Seu grande diferencial é a flexibilidade na criação dos formulários e a operação offline com envio periódico das coletas.',
        images: [
          'images/projects/quiz_faction/image_1.png',
          'images/projects/quiz_faction/image_2.png',
          'images/projects/quiz_faction/image_3.png',
          'images/projects/quiz_faction/image_4.png',
        ],
        technologies: ['Flutter', 'Firebase', 'SQLite'],
      ),
      ProjectView(
        title: '2K Fest - App de venda e validação de ingressos',
        description:
            'Aplicativo desenvolvido em Flutter Web com Firebase para a venda de ingressos do evento beneficente promovido pelo Rotaract. O sistema permitia que vendedores cadastrados registrassem as vendas, enviando automaticamente o ingresso com QR Code para o WhatsApp do comprador. No dia do evento, o app realizava a validação dos tickets, conferindo autenticidade e impedindo reutilizações. Uma solução completa para gestão de vendas, emissão e controle de acesso.',
        images: [
          'images/projects/2kfest/login.png',
          'images/projects/2kfest/ingressos.png',
          'images/projects/2kfest/ingressos_vendidos.png',
          'images/projects/2kfest/validacao.png',
          'images/projects/2kfest/venda_ingressos.png',
        ],
        technologies: [
          'Flutter Web',
          'Firebase',
          'Whatsapp',
          'Qr Code',
          'Câmera',
        ],
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    final items = _data();
    final isMobile = Responsive.isMobile(context);
    final cardWidth = isMobile ? context.w(.9) : context.w(.28);

    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: Responsive.isMobile(context)
            ? const EdgeInsets.symmetric(horizontal: 8, vertical: 24)
            : const EdgeInsets.all(35),
        child: Column(
          spacing: 24,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Projetos',
              style: Theme.of(context).textTheme.titleLarge,
              textAlign: TextAlign.center,
            ),
            Text(
              'Alguns dos trabalhos desenvolvidos recentemente',
              textAlign: TextAlign.center,
            ),
            Wrap(
              alignment: WrapAlignment.center,
              spacing: 24,
              runSpacing: 24,
              children: [
                ...items.map(
                  (p) => SizedBox(
                    width: cardWidth,
                    child: ProjectCard(
                      title: p.title,
                      description: p.description,
                      images: p.images,
                      technologies: p.technologies,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
