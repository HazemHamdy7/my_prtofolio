import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:my_prtofolio/features/home/presentation/my_services/animation/animation_services.dart';
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
                          return AnimatedServiceItem(
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
