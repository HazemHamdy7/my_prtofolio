import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:my_prtofolio/features/home/presentation/my_services/logic/service_cubit.dart';
import 'package:my_prtofolio/features/home/presentation/my_services/logic/service_state.dart';
import 'package:my_prtofolio/features/home/presentation/my_services/widget/custom_card_services.dart';
import 'package:my_prtofolio/helper/extensions.dart';
import 'package:visibility_detector/visibility_detector.dart';

class DesktopServicesItem extends StatelessWidget {
  const DesktopServicesItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: context.insets.padding),
      child: BlocProvider(
        create: (context) => ServicesCubit()..fetchServices(),
        child: BlocBuilder<ServicesCubit, ServicesState>(
          builder: (context, state) {
            if (state is Loading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is Failure) {
              return Center(child: Text(state.message));
            } else if (state is Success) {
              final services = state.services;
              return SizedBox(
                height: context.mediaQuery.size.height / 2,
                width: context.mediaQuery.size.width,
                child: CustomScrollView(
                  physics: const NeverScrollableScrollPhysics(),
                  controller: ScrollController(),
                  slivers: [
                    SliverPadding(
                      padding: EdgeInsets.all(context.insets.padding),
                      sliver: SliverGrid.builder(
                        itemCount: services.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          crossAxisSpacing: 24,
                          mainAxisSpacing: 24,
                          childAspectRatio: 0.8,
                        ),
                        itemBuilder: (context, index) {
                          final service = services[index];
                          return _AnimatedServiceItem(
                            key: ValueKey(service.title), // مفتاح فريد
                            service: service,
                          );
                        },
                      ),
                    ),
                  ],
                ),
              );
            } else if (state is Failure) {
              return Center(child: Text(state.message));
            }
            return const Center(child: Text('Unexpected state'));
          },
        ),
      ),
    );
  }
}

class _AnimatedServiceItem extends StatefulWidget {
  final dynamic service;

  const _AnimatedServiceItem({super.key, required this.service});

  @override
  State<_AnimatedServiceItem> createState() => _AnimatedServiceItemState();
}

class _AnimatedServiceItemState extends State<_AnimatedServiceItem> {
  bool _isVisible = false;

  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: Key(widget.service.title),
      onVisibilityChanged: (info) {
        if (info.visibleFraction > 0.2 && !_isVisible) {
          setState(() => _isVisible = true);
        }
      },
      child: TweenAnimationBuilder(
        duration: const Duration(milliseconds: 1500),
        tween: Tween<double>(begin: 0.0, end: _isVisible ? 1.0 : 0.0),
        curve: Curves.easeOutBack,
        builder: (context, value, child) {
          return Transform.scale(
            scale: value,
            child: Opacity(
              opacity: value.clamp(0.0, 1.0),
              child: Column(
                children: [
                  CustomCardServices(
                    title: widget.service.title,
                    description: widget.service.description,
                    imageUrl: widget.service.imageUrl,
                    buttonTitle: "See More",
                  ),
                  const Gap(16),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
