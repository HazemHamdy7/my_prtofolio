import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:my_prtofolio/constants/assets.dart';
import 'package:my_prtofolio/features/home/presentation/my_services/logic/service_cubit.dart';
import 'package:my_prtofolio/features/home/presentation/my_services/widget/custom_card_services.dart';
import 'package:my_prtofolio/helper/extensions.dart';
import 'package:visibility_detector/visibility_detector.dart';

import '../logic/service_state.dart';
import '../model/service_model.dart';

class ServicesItemMobile extends StatelessWidget {
  const ServicesItemMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ServicesCubit()..fetchServices(),
      child: BlocBuilder<ServicesCubit, ServicesState>(
        builder: (context, state) {
          switch (state.runtimeType) {
            case Loading:
              return const Center(child: CircularProgressIndicator());
            case Failure:
              final failureState = state as Failure;
              return Center(child: Text(failureState.message));
            case Success:
              final successState = state as Success;
              return Center(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 400),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: SizedBox(
                      height: context.mediaQuery.size.height * 1.2,
                      child: ScrollConfiguration(
                        behavior: ScrollConfiguration.of(
                          context,
                        ).copyWith(scrollbars: false),
                        child: CustomScrollView(
                          physics: const BouncingScrollPhysics(),
                          slivers: [
                            SliverPadding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 8.0,
                              ),
                              sliver: SliverList.builder(
                                itemCount: successState.services.length,
                                itemBuilder: (context, index) {
                                  final ServiceModel service =
                                      successState.services[index];
                                  return _AnimatedServiceItem(
                                    key: ValueKey('service_${service.title}'),
                                    service: service,
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              );

            default:
              return const SizedBox.shrink();
          }
        },
      ),
    );
  }
}

class _AnimatedServiceItem extends StatefulWidget {
  final List<String> servicImages = [
    Assets.imagesCode,
    Assets.imagesCode2,
    Assets.imagesComputer,
  ];

  final dynamic service;

  _AnimatedServiceItem({Key? key, required this.service}) : super(key: key);

  @override
  State<_AnimatedServiceItem> createState() => _AnimatedServiceItemState();
}

class _AnimatedServiceItemState extends State<_AnimatedServiceItem> {
  bool _isVisible = false;

  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: Key(widget.service.title['en'] ?? 'default'),
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
                    serviceModel:
                        widget.service, // هنا نمرر الـ serviceModel كاملاً
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
