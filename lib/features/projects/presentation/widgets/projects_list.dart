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
        title: 'Quiz Faction – App oficial da Expofred 2022',
        description:
            'Aplicativo desenvolvido para a equipe de pesquisa da UFSM-FW, utilizado na coleta de dados de frequentadores e expositores da feira Expofred. O app permite criar e preencher formulários personalizados, funciona totalmente offline durante as entrevistas e armazena os dados localmente em SQLite. Posteriormente, realiza a sincronização dos formulários com o servidor na nuvem (Firebase). Seu grande diferencial é a flexibilidade na criação dos formulários e a operação offline com envio periódico das coletas.',
        images: [
          '/images/projects/quiz_faction/image_1.png',
          '/images/projects/quiz_faction/image_2.png',
          '/images/projects/quiz_faction/image_3.png',
          '/images/projects/quiz_faction/image_4.png',
        ],
        technologies: ['Flutter', 'Firebase', 'SQLite'],
      ),
      ProjectView(
        title: '2K Fest - App de venda e validação de ingressos',
        description:
            'Aplicativo desenvolvido em Flutter Web com Firebase para a venda de ingressos do evento beneficente promovido pelo Rotaract. O sistema permitia que vendedores cadastrados registrassem as vendas, enviando automaticamente o ingresso com QR Code para o WhatsApp do comprador. No dia do evento, o app realizava a validação dos tickets, conferindo autenticidade e impedindo reutilizações. Uma solução completa para gestão de vendas, emissão e controle de acesso.',
        images: [
          '/images/projects/2kfest/login.png',
          '/images/projects/2kfest/ingressos.png',
          '/images/projects/2kfest/ingressos_vendidos.png',
          '/images/projects/2kfest/validacao.png',
          '/images/projects/2kfest/venda_ingressos.png',
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

    return Padding(
      padding: Responsive.isMobile(context)
          ? const EdgeInsets.symmetric(horizontal: 8, vertical: 24)
          : const EdgeInsets.all(35),
      child: Column(
        spacing: 24,
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
    );
  }
}
