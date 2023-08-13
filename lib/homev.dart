import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeView extends StatelessWidget {
  final List<String> categoryItems = ['Services', 'Products', 'Catalog'];

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Dominic Solutions'),
      ),
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: SizedBox(height: 10),
          ),
          SliverToBoxAdapter(
            child: CarouselSlider(
              items: categoryItems.map((item) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: CupertinoButton(
                    onPressed: () {
                      // Handle category selection
                    },
                    color: CupertinoColors.systemGrey3,
                    child: Text(item),
                  ),
                );
              }).toList(),
              options: CarouselOptions(
                height: 100,
                autoPlay: true,
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(16),
            sliver: SliverGrid(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.75,
              ),
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return ServiceCard(serviceTitle: 'Service $index');
                },
                childCount: 6, // Number of cards
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ServiceCard extends StatelessWidget {
  final String serviceTitle;

  ServiceCard({required this.serviceTitle});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: CupertinoColors.systemGrey3.withOpacity(0.5),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network("src"),
              const Icon(CupertinoIcons.gear, size: 36),
              const SizedBox(height: 8),
              Text(
                serviceTitle,
                style: CupertinoTheme.of(context).textTheme.textStyle.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
