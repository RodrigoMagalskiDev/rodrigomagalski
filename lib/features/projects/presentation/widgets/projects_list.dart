import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/responsive.dart';
import 'package:portfolio/core/utils/screen_size_helper.dart';
import 'project_card.dart';

class ProjectView {
  final String title;
  final String description;
  final List<String> images;
  final List<String> technologies;
  final String? actionLabel;
  final String? actionUrl;
  const ProjectView({
    required this.title,
    required this.description,
    required this.images,
    required this.technologies,
    this.actionLabel,
    this.actionUrl,
  });
}

class ProjectsList extends StatelessWidget {
  const ProjectsList({super.key});

  List<ProjectView> _data() {
    return const [
      ProjectView(
        title: 'Comparaí - App de Compras',
        description:
            'Aplicativo para criação e organização de listas de compras de supermercado, com uso offline e comparação de preços entre estabelecimentos. O Comparaí oferece uma base ampla de produtos, compartilhamento de listas e histórico de compras, entregando uma experiência simples, fluida e pensada para tornar as compras do dia a dia mais práticas.',
        images: [
          'images/projects/comparai/image_1.png',
          'images/projects/comparai/image_2.png',
          'images/projects/comparai/image_3.png',
          'images/projects/comparai/image_4.png',
        ],
        technologies: ['Flutter', 'Dart', 'Supabase'],
        actionLabel: 'Ver na loja',
        actionUrl:
            'https://play.google.com/store/apps/details?id=br.com.rodrigomagalskidev.comparai',
      ),
      ProjectView(
        title: 'Eidara FIT – App para gestão de treinos e serviços da academia',
        description:
            'Aplicativo mobile criado para aproximar alunos da academia e centralizar a rotina de treinos e serviços. O Eidara FIT permite visualizar treinos, acompanhar evolução, agendar aulas ou serviços personalizados e adquirir pacotes pelo app. Também conta com integração com redes sociais, oferecendo uma navegação intuitiva e alinhada ao dia a dia da academia.',
        images: [
          'images/projects/eidara_fit_app/login.png',
          'images/projects/eidara_fit_app/contratos.png',
          'images/projects/eidara_fit_app/profile.png',
          'images/projects/eidara_fit_app/treino.png',
          'images/projects/eidara_fit_app/aulas.png',
        ],
        technologies: ['Flutter', 'Firebase', 'GraphQL', 'Instagram'],
        actionLabel: 'Ver na loja',
        actionUrl:
            'https://play.google.com/store/apps/details?id=br.com.eidara.eidarafit',
      ),
      ProjectView(
        title:
            'Eidara FIT Web – Plataforma completa de gestão para academias e studios',
        description:
            'Sistema web desenvolvido para centralizar a administração de academias e studios. A plataforma permite gerenciar clientes, funcionários, permissões, treinos, aulas, serviços personalizados, avaliações físicas, vendas, pacotes e contratos. Também inclui promoções e integração com catracas, entregando uma operação mais organizada, segura e eficiente para o ambiente fitness.',
        images: [
          'images/projects/eidara_fit_web/agenda.png',
          'images/projects/eidara_fit_web/treino.png',
          'images/projects/eidara_fit_web/relatorios.png',
          'images/projects/eidara_fit_web/usuarios.png',
          'images/projects/eidara_fit_web/logs.png',
          'images/projects/eidara_fit_web/avaliacao_fisica.png',
          'images/projects/eidara_fit_web/vendas.png',
        ],
        technologies: ['Angular', 'Typescript', 'GraphQL', 'Firebase'],
      ),
      ProjectView(
        title: 'Eidara PET – App para tutores de pets',
        description:
            'Aplicativo mobile pensado para facilitar a rotina de tutores de pets. O Eidara PET exibe empresas e serviços próximos, permite agendar atendimentos e hospedagens, acompanhar reservas, controlar a carteira de vacinação e cadastrar animais. Também inclui recursos para pets perdidos ou disponíveis para adoção, com notificações personalizadas.',
        images: [
          'images/projects/petmais_app/login_app.png',
          'images/projects/petmais_app/home_app.png',
          'images/projects/petmais_app/supplier_app.png',
          'images/projects/petmais_app/schedules_app.png',
          'images/projects/petmais_app/pet_app.png',
          'images/projects/petmais_app/profile_app.png',
          'images/projects/petmais_app/vaccination_app.png',
        ],
        technologies: [
          'Flutter',
          'Firebase',
          'API REST',
          'Push Notifications',
          'Geolocalização',
        ],
        actionLabel: 'Ver na loja',
        actionUrl:
            'https://play.google.com/store/apps/details?id=br.com.rodrigomagalskidev.app_pet',
      ),
      ProjectView(
        title:
            'Eidara PET Web – Plataforma de gestão para empresas do ramo pet',
        description:
            'Plataforma web responsiva criada para empresas do setor pet organizarem operações em um único lugar. A solução permite configurar serviços, gerenciar agendamentos e hospedagens, cadastrar funcionários com permissões, registrar produtos e acompanhar relatórios de desempenho. Integrada ao backend em Dart, oferece uma gestão moderna e eficiente para o negócio.',
        images: [
          'images/projects/petmais_web/login.png',
          'images/projects/petmais_web/home.png',
          'images/projects/petmais_web/configs.png',
          'images/projects/petmais_web/schedule.png',
          'images/projects/petmais_web/reports.png',
          'images/projects/petmais_web/servicos.png',
        ],
        technologies: [
          'Flutter Web',
          'Firebase',
          'API REST',
          'Push Notifications',
          'AWS',
        ],
        actionLabel: 'Ver Site',
        actionUrl: 'https://eidarapet.eidara.com.br/',
      ),
      ProjectView(
        title:
            'Eidara Ticket - Sistema de emissão e controle de ingressos para eventos',
        description:
            'Sistema completo para divulgação, venda e controle de ingressos em eventos. O projeto inclui site de vendas, painel administrativo para gestão de eventos e pré-vendas, integração com WhatsApp para envio automático dos ingressos e módulo de validação na entrada. A solução organiza todo o fluxo, da compra ao acesso do participante.',
        images: [
          'images/projects/eidara-ticket/evento.png',
          'images/projects/eidara-ticket/dashboard.png',
          'images/projects/eidara-ticket/clientes.png',
          'images/projects/eidara-ticket/lotes.png',
          'images/projects/eidara-ticket/conferencia.png',
          'images/projects/eidara-ticket/ingresso.png',
        ],
        technologies: ['React', 'Vite', 'Supabase', 'PostgreSQL'],
      ),
      ProjectView(
        title: 'Desconecte – Minijogos offline para conectar pessoas',
        description:
            'Aplicativo de minijogos e desafios criado para aproximar casais, duplas e grupos em experiências rápidas e offline. O Desconecte oferece categorias variadas, de atividades leves a dinâmicas competitivas, para encontros, viagens, festas ou momentos em casa. Seu gerador interno de desafios por IA cria jogos personalizados conforme contexto, energia e tempo disponível.',
        images: [
          '/images/projects/desconecte/home.png',
          '/images/projects/desconecte/jogos.png',
          '/images/projects/desconecte/item.png',
          '/images/projects/desconecte/item_2.png',
        ],
        technologies: ['Flutter', 'Firebase', 'IA'],
        actionLabel: 'Ver na loja',
        actionUrl:
            'https://play.google.com/store/apps/details?id=br.com.rodrigomagalskidev.desconecte',
      ),
      ProjectView(
        title: 'Quiz Faction – App oficial da Expofred',
        description:
            'Aplicativo desenvolvido para a equipe de pesquisa da UFSM-FW coletar dados de frequentadores e expositores da Expofred. O app permite criar e preencher formulários personalizados, funciona offline durante as entrevistas e armazena os dados localmente em SQLite. Depois, sincroniza as coletas com o Firebase, garantindo flexibilidade e segurança no envio.',
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
            'Aplicativo em Flutter Web com Firebase para venda e validação de ingressos de um evento beneficente do Rotaract. O sistema permitia que vendedores cadastrados registrassem vendas e enviassem automaticamente ingressos com QR Code pelo WhatsApp. No evento, o app validava os tickets, conferindo autenticidade e evitando reutilizações no acesso.',
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
    final cardHeight = 720.0;

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
                    height: cardHeight,
                    child: ProjectCard(
                      title: p.title,
                      description: p.description,
                      images: p.images,
                      technologies: p.technologies,
                      actionLabel: p.actionLabel,
                      actionUrl: p.actionUrl,
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
