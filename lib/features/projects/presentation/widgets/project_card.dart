import 'dart:async';
import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/responsive.dart';

class ProjectCard extends StatefulWidget {
  final String title;
  final String description;
  final List<String> images;
  final List<String> technologies;
  const ProjectCard({
    super.key,
    required this.title,
    required this.description,
    required this.images,
    required this.technologies,
  });

  @override
  State<ProjectCard> createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  late final PageController _pageController;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    if (widget.images.length > 1) {
      _timer = Timer.periodic(const Duration(seconds: 4), (_) {
        final next = (_pageController.page?.round() ?? 0) + 1;
        _pageController.animateToPage(
          next % widget.images.length,
          duration: const Duration(milliseconds: 400),
          curve: Curves.easeInOut,
        );
      });
    }
  }

  @override
  void dispose() {
    _timer?.cancel();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isMobile = Responsive.isMobile(context);
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          AspectRatio(
            aspectRatio: 4 / 3,
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
              child: Stack(
                fit: StackFit.expand,
                children: [
                  PageView.builder(
                    controller: _pageController,
                    itemCount: widget.images.length,
                    itemBuilder: (_, index) {
                      final url = widget.images[index];
                      return Stack(
                        fit: StackFit.expand,
                        children: [
                          Container(
                            color: isMobile ? Colors.grey.shade200 : null,
                          ),
                          Image.asset(
                            url,
                            fit: BoxFit.contain,
                            filterQuality: FilterQuality.high,
                            errorBuilder: (_, __, ___) =>
                                Container(color: Colors.grey.shade300),
                          ),
                          Positioned.fill(
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.bottomCenter,
                                  end: Alignment.topCenter,
                                  colors: [
                                    Colors.black.withValues(alpha: 0.35),
                                    Colors.transparent,
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                  Positioned(
                    bottom: 8,
                    left: 0,
                    right: 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        widget.images.length,
                        (i) => AnimatedBuilder(
                          animation: _pageController,
                          builder: (_, __) {
                            final page = _pageController.page ?? 0;
                            final active = page.round() == i;
                            return Container(
                              width: active ? 10 : 8,
                              height: active ? 10 : 8,
                              margin: const EdgeInsets.symmetric(horizontal: 4),
                              decoration: BoxDecoration(
                                color: active ? Colors.white : Colors.white70,
                                shape: BoxShape.circle,
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.title,
                  style: Theme.of(
                    context,
                  ).textTheme.titleMedium?.copyWith(color: Colors.black),
                ),
                const SizedBox(height: 8),
                Text(
                  widget.description,
                  style: const TextStyle(color: Colors.black87),
                ),
                const SizedBox(height: 12),
                Wrap(
                  spacing: 8,
                  runSpacing: 4,
                  children: widget.technologies
                      .map(
                        (tech) => Chip(
                          padding: EdgeInsets.all(3),
                          label: Text(tech),
                          backgroundColor: Colors.blue.shade100,
                        ),
                      )
                      .toList(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
