import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:my_prtofolio/features/testimonil/widget/testimonil_item.dart';
import 'package:my_prtofolio/helper/extensions.dart';

class TestimonilList extends StatelessWidget {
  const TestimonilList({super.key});

  @override
  Widget build(BuildContext context) {
    return const DesktopTestimoni();
  }
}

class DesktopTestimoni extends StatelessWidget {
  const DesktopTestimoni({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverMasonryGrid(
      crossAxisSpacing: 16,
      mainAxisSpacing: 16,
      delegate: SliverChildBuilderDelegate((context, index) {
        return TestimonilItem();
      }, childCount: 10),
      gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: context.isDesktop ? 3 : 2,
      ),
    );
  }
}
