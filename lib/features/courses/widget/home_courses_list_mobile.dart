// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:my_prtofolio/features/courses/logic/cubit/courses_cubit.dart';
// import 'package:my_prtofolio/features/courses/logic/cubit/courses_state.dart';
// import 'package:my_prtofolio/features/courses/widget/courses_item.dart';

// class HomeCoursesListMobile extends StatelessWidget {
//   HomeCoursesListMobile({super.key});
//   final scrollController = ScrollController();

//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (context) => CoursesCubit()..fetchCourses(),
//       child: SizedBox(
//         height: 450,
//         child: BlocBuilder<CoursesCubit, CoursesState>(
//           builder: (context, state) {
//             if (state is CoursesLoading) {
//               return const Center(child: CircularProgressIndicator());
//             } else if (state is CoursesLoaded) {
//               return ListView.builder(
//                 controller: scrollController,
//                 physics: NeverScrollableScrollPhysics(),
//                 scrollDirection: Axis.vertical,

//                 itemCount: state.courses.length,
//                 itemBuilder: (context, index) {
//                   return Padding(
//                     padding: const EdgeInsets.only(right: 16.0),
//                     child: CoursesItem(course: state.courses[index]),
//                   );
//                 },
//               );
//             } else if (state is CoursesError) {
//               return Center(child: Text(state.message));
//             } else {
//               return const Center(
//                 child: Text('No data', style: TextStyle(color: Colors.white)),
//               );
//             }
//           },
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_prtofolio/features/courses/logic/cubit/courses_cubit.dart';
import 'package:my_prtofolio/features/courses/logic/cubit/courses_state.dart';
import 'package:my_prtofolio/features/courses/widget/courses_item.dart';

class HomeCoursesListMobile extends StatelessWidget {
  const HomeCoursesListMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CoursesCubit()..fetchCourses(),
      child: BlocBuilder<CoursesCubit, CoursesState>(
        builder: (context, state) {
          if (state is CoursesLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is CoursesLoaded) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(
                state.courses.length,
                (index) => Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: CoursesItem(course: state.courses[index]),
                ),
              ),
            );
          } else if (state is CoursesError) {
            return Center(child: Text(state.message));
          } else {
            return const Center(
              child: Text('No data', style: TextStyle(color: Colors.white)),
            );
          }
        },
      ),
    );
  }
}
