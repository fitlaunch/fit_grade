// import 'package:fit_grade/Views/Ratios/ratio_providers.dart';
// import 'package:fit_grade/Widgets/app_bar_primary.dart';
// import 'package:flutter/material.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';
//
// import '../../Widgets/southernAppBar.dart';
// //import 'package:fit_grade/Views/Ratios/provide_all_ratios.dart';
//
// class RatiosScreen extends ConsumerWidget {
//   const RatiosScreen({
//     Key? key,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final ratios = ref.watch(allRatioProvider);
//     //final fav = ref.watch(allRatioProvider).where((ratio) => ratio.isFavorite);
//
//     return Scaffold(
//       appBar: AppBarPrimary(title: 'Anthropomorphic Measures'),
//       bottomNavigationBar: SouthernAppBar(),
//       body: Container(
//         padding: const EdgeInsets.symmetric(horizontal: 8),
//         child: Column(
//           mainAxisSize: MainAxisSize.max,
//           children: [
//             Container(
//               height: 150,
//               width: double.infinity,
//               padding: const EdgeInsets.all(8),
//               margin: const EdgeInsets.fromLTRB(0, 8, 0, 4),
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(12),
//                 color: const Color(0xffDB1F48),
//               ),
//               child: const Center(
//                 child: Text(
//                   'Put cute select message here',
//                   style: TextStyle(color: Colors.white),
//                 ),
//               ),
//             ),
//             const Divider(thickness: 3),
//             Expanded(
//               child: ListView.builder(
//                 itemCount: ratios.length,
//                 itemBuilder: (context, index) {
//                   final ratio = ratios.elementAt(index);
//                   // final favoriteIcon = ratio.isFavorite
//                   //     ? const Icon(
//                   //         Icons.favorite,
//                   //         color: Colors.blue,
//                   //       )
//                   //     : const Icon(Icons.favorite_border);
//                   return Column(
//                     children: [
//                       ListTile(
//                         shape: const RoundedRectangleBorder(
//                             borderRadius: BorderRadius.only(
//                                 topLeft: Radius.circular(12),
//                                 topRight: Radius.circular(12),
//                                 bottomRight: Radius.circular(12),
//                                 bottomLeft: Radius.circular(12))),
//                         tileColor: const Color(0xffE5DDC8),
//                         title: Text(ratio.title),
//                         subtitle: Text(ratio.description),
//                         trailing: Row(
//                           mainAxisSize: MainAxisSize.min,
//                           children: [
//                             IconButton(
//                               icon: const Icon(Icons.history),
//                               onPressed: () {},
//                             ),
//                             IconButton(
//                               icon: const Icon(Icons.arrow_forward_ios_sharp),
//                               onPressed: () {},
//                             ),
//                           ],
//                         ),
//                       ),
//                       const Divider(),
//                     ],
//                   );
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// @immutable
// class Ratio {
//   final String id;
//   final String title;
//   final String description;
//   final bool isFavorite;
//
//   const Ratio({
//     required this.id,
//     required this.title,
//     required this.description,
//     required this.isFavorite,
//   });
//
//   Ratio copy({required bool isFavorite}) => Ratio(
//         id: id,
//         title: title,
//         description: description,
//         isFavorite: isFavorite,
//       );
//
//   @override
//   String toString() => 'Ratio(id: $id,'
//       'title: $title,'
//       'description: $description,'
//       'isFavorite: $isFavorite)';
//
//   @override
//   bool operator ==(covariant Ratio other) =>
//       id == other.id && isFavorite == other.isFavorite;
// }
//
// const allRatios = [
//   Ratio(
//     id: '1',
//     title: 'BMI',
//     description: 'Body Mass Index',
//     isFavorite: false,
//   ),
//   Ratio(
//     id: '2',
//     title: 'BMR',
//     description: 'Basal Metobolic Rate',
//     isFavorite: false,
//   ),
//   Ratio(
//     id: '3',
//     title: 'Waist to Hip',
//     description: 'Ratio of waist to hip',
//     isFavorite: false,
//   ),
//   Ratio(
//     id: '5',
//     title: 'Waist to Height',
//     description: 'Ratio of waist to height',
//     isFavorite: false,
//   ),
//   Ratio(
//     id: '6',
//     title: 'Bioelectrical Impedance',
//     description: 'Body fat percentage calculation',
//     isFavorite: false,
//   ),
//   Ratio(
//     id: '7',
//     title: 'Caliper Measure',
//     description: 'Body fat percentage calculation',
//     isFavorite: false,
//   ),
//   Ratio(
//     id: '8',
//     title: 'Girth Relations',
//     description: 'Body fat percentage caclulation',
//     isFavorite: false,
//   ),
//   Ratio(
//     id: '9',
//     title: 'Girth Measures',
//     description: 'Body circumference tracking',
//     isFavorite: false,
//   ),
// ];
