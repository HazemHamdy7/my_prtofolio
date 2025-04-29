// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:my_prtofolio/features/courses/logic/cubit/courses_cubit.dart';
// import 'package:my_prtofolio/features/courses/logic/cubit/courses_state.dart';
// import 'package:my_prtofolio/features/courses/widget/courses_item.dart';
// import 'package:my_prtofolio/helper/extensions.dart';

// class HomeCoursrsListDesktop extends StatelessWidget {
//   const HomeCoursrsListDesktop({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (context) => CoursesCubit()..fetchCourses(),
//       child: Padding(
//         padding: EdgeInsets.symmetric(horizontal: context.insets.padding),
//         child: BlocBuilder<CoursesCubit, CoursesState>(
//           builder: (context, state) {
//             if (state is CoursesLoading) {
//               return const Center(child: CircularProgressIndicator());
//             } else if (state is CoursesLoaded) {
//               return SizedBox(
//                 height: 450,
//                 child: ListView.builder(
//                   scrollDirection: Axis.horizontal,
//                   itemCount: state.courses.length,
//                   itemBuilder: (context, index) {
//                     return Padding(
//                       padding: const EdgeInsets.only(right: 16.0),
//                       child: CoursesItem(course: state.courses[index]),
//                     );
//                   },
//                 ),
//               );
//             } else if (state is CoursesError) {
//               return Center(child: Text(state.message));
//             } else {
//               return const Center(child: Text('No data'));
//             }
//           },
//         ),
//       ),
//     );
//   }
// }
