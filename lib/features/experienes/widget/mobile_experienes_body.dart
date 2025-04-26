import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_prtofolio/features/experienes/cubit/experinenes_cubit.dart';
import 'package:my_prtofolio/features/experienes/cubit/experinenes_state.dart';
import 'package:my_prtofolio/features/experienes/widget/experence_item.dart';
import 'package:my_prtofolio/helper/extensions.dart';

class MobileExperienesBody extends StatelessWidget {
  const MobileExperienesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ExperinenesCubit()..fetchExperiences(),
      child: BlocBuilder<ExperinenesCubit, ExperinenesState>(
        builder: (context, state) {
          if (state is Loading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is Error) {
            return Center(child: Text(state.message));
          } else if (state is Loaded) {
            final experiences = state.experiences;
            return SizedBox(
              //height: MediaQuery.of(context).size.height * 0.8,
              child: ListView.separated(
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                padding: EdgeInsets.all(context.insets.padding),
                itemCount: experiences.length,
                separatorBuilder:
                    (context, index) => Center(
                      child: SizedBox(
                        height: 60,
                        child: DottedLine(
                          dashColor: context.colorScheme.primary,
                          direction: Axis.vertical,
                        ),
                      ),
                    ),
                itemBuilder: (context, index) {
                  return Center(
                    child: ExperenceItem(experiences: experiences[index]),
                  );
                },
              ),
            );
          }
          // Handle any unimplemented state
          return const Center(child: Text('Unexpected state'));
        },
      ),
    );
  }
}

// import 'package:dotted_line/dotted_line.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:my_prtofolio/features/experienes/cubit/experinenes_cubit.dart';
// import 'package:my_prtofolio/features/experienes/cubit/experinenes_state.dart';
// import 'package:my_prtofolio/features/experienes/widget/experence_item.dart';
// import 'package:my_prtofolio/helper/extensions.dart';

// class MobileExperienesBody extends StatelessWidget {
//   const MobileExperienesBody({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (context) => ExperinenesCubit()..fetchExperiences(),
//       child: BlocBuilder<ExperinenesCubit, ExperinenesState>(
//         builder: (context, state) {
//           if (state is Loading) {
//             return const Center(child: CircularProgressIndicator());
//           } else if (state is Error) {
//             return Center(child: Text(state.message));
//           } else if (state is Loaded) {
//             final experiences = state.experiences;
//             return SingleChildScrollView(
//               child: Column(
//                 children: [
//                   for (int index = 0; index < experiences.length; index++) ...[
//                      Center(
//                       child: ExperenceItem(experiences: experiences[index]),
//                     ),

//                     SizedBox(
//                       height: 60,
//                       child: DottedLine(
//                         dashColor: context.colorScheme.primary,
//                         direction: Axis.vertical,
//                       ),
//                     ),

//                     if (index !=
//                         experiences.length - 1) // Avoid dot after the last item
//                       Container(
//                         alignment: Alignment.center,
//                         width: 16.0, // Size of the dot
//                         height: 16.0, // Size of the dot
//                         decoration: BoxDecoration(
//                           shape: BoxShape.circle,
//                           color: context.colorScheme.primary,
//                         ),
//                       ),
//                   ],
//                 ],
//               ),
//             );
//           }
//           // Handle any unimplemented state
//           return const Center(child: Text('Unexpected state'));
//         },
//       ),
//     );
//   }
// }
