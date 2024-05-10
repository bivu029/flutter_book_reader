// // ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'package:bookbazar/src/core/config/context.config.dart';
// import 'package:bookbazar/src/core/routes/names.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// import 'package:bookbazar/src/core/global/all.enitity.dart';
// import 'package:bookbazar/src/features/dashboard/presentation/bloc/dashboard_bloc.dart';
// import 'package:go_router/go_router.dart';
// import 'package:shimmer/shimmer.dart';

// class ContinueReadingWidget extends StatelessWidget {
//   const ContinueReadingWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<DashboardBloc, DashboardState>(
//       buildWhen: (previous, current) {
//         return current is ContinueReadingEmpty || current is ContinuereadState;
//       },
//       builder: (context, state) {
//         print("contiue :$state");
//         switch (state.runtimeType) {
//           case ContinueReadingEmpty:
//             return const SizedBox();
//           case ContinuereadState:
//             final continuereadstate = state as ContinuereadState;

//             return ContinueRead(
//               book: continuereadstate.book,
//               bookProgress: continuereadstate.bookProgress,
//             );
//           default:
//             return const SizedBox();
//         }
//       },
//     );
//   }
// }

// class ContinueRead extends StatelessWidget {
//   const ContinueRead({
//     Key? key,
//     required this.book,
//     required this.bookProgress,
//   }) : super(key: key);
//   final Book book;
//   final BookProgress bookProgress;

//   @override
//   Widget build(BuildContext context) {
//     const String imag =
//         "https://gravatar.com/avatar/067797c879fd3e9f9b7f006aebf98974?s=400&d=robohash&r=x";
//     final double bookparcent =
//         bookProgress.completChapterList.length / bookProgress.totalChapters;
//     return GestureDetector(
//       onTap: () {
//         if (kIsWeb) {
//           GoRouter.of(context).goNamed(RoutesNameEnum.book.name,
//               pathParameters: {"title": book.title}, extra: book);
//         } else {
//           GoRouter.of(context).pushNamed(RoutesNameEnum.book.name,
//               pathParameters: {"title": book.title}, extra: book);
//         }
//       },
//       child: SizedBox(
//         // color: Colors.green,
//         height: 110,
//         width: double.infinity,
//         child: Stack(
//           children: [
//             Container(
//               margin: const EdgeInsets.only(
//                   top: 18, bottom: 10, left: 10, right: 10),
//               height: 90,
//               width: double.infinity,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(8),
//                 color: const Color.fromARGB(255, 241, 240, 240),
//               ),
//             ),
//             Row(
//               children: [
//                 Card(
//                   shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(5)),
//                   margin: const EdgeInsets.only(left: 33, bottom: 30),
//                   color: Colors.grey,
//                   child: Image.network(book.bookCover ?? imag,
//                       height: 75, width: 60, fit: BoxFit.cover,
//                       loadingBuilder: (context, child, loadingProgress) {
//                     if (loadingProgress == null) return child;
//                     return Shimmer.fromColors(
//                       baseColor: Colors.grey.shade300,
//                       highlightColor: Colors.grey.shade100,
//                       child: Container(
//                         height: 75,
//                         width: 60,
//                         color: Colors.white,
//                       ),
//                     );
//                   }),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(left: 15, top: 24),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       const Text(
//                         "CONTINUE READING",
//                         style: TextStyle(
//                             fontWeight: FontWeight.w800,
//                             fontSize: 14,
//                             color: Colors.black),
//                       ),
//                       SizedBox(
//                         width: context.width * .38,
//                         child: Text(
//                           book.title,
//                           overflow: TextOverflow.ellipsis,
//                           maxLines: 1,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 const Expanded(child: SizedBox()),
//                 const Padding(
//                   padding: EdgeInsets.only(right: 22, bottom: 36),
//                   child: Text(
//                     "READ",
//                     style: TextStyle(
//                         fontWeight: FontWeight.w700,
//                         fontSize: 14,
//                         color: Colors.green),
//                   ),
//                 )
//               ],
//             ),
//             Padding(
//               padding: const EdgeInsets.only(top: 86, left: 35, right: 35),
//               child: LinearProgressIndicator(
//                 value:
//                     bookparcent, // This represents the progress (50% in this case)
//                 backgroundColor: const Color.fromARGB(
//                     255, 211, 210, 210), // Use a transparent background
//                 valueColor: const AlwaysStoppedAnimation<Color>(
//                     Colors.green), // Progress color
//                 minHeight: 1.5, // Set the height of the progress bar
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
// // 