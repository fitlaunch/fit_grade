import 'package:fit_grade/Views/Ratios/ratio_providers.dart';
import 'package:fit_grade/Widgets/app_bar_primary.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RatiosScreen extends ConsumerWidget {
  const RatiosScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ratios = ref.watch(allRatioProvider);
    final fav = ref.watch(allRatioProvider).where((ratio) => ratio.isFavorite);
    return Scaffold(
      appBar: AppBarPrimary(title: 'Anthropomorphic Measures'),
      body: ListView.builder(
        itemCount: ratios.length,
        itemBuilder: (context, index) {
          final ratio = ratios.elementAt(index);
          final favoriteIcon = ratio.isFavorite
              ? const Icon(
                  Icons.favorite,
                  color: Colors.blue,
                )
              : const Icon(Icons.favorite_border);
          return Column(
            children: [
              ListTile(
                title: Text(ratio.title),
                subtitle: Text(ratio.description),
                trailing: IconButton(
                  icon: favoriteIcon,
                  onPressed: () {
                    favoriteIcon;
                  },
                  //   final isFavorite = !ratio.isFavorite;
                  //   ref
                  //       .read(allRatiosProvider.notifier)
                  //       .update(ratio, ratio.isFavorite);
                  // },
                ),
              ),
              const Divider(),
            ],
          );
        },
      ),
    );
  }
}

@immutable
class Ratio {
  final String id;
  final String title;
  final String description;
  final bool isFavorite;

  const Ratio({
    required this.id,
    required this.title,
    required this.description,
    required this.isFavorite,
  });

  Ratio copy({required bool isFavorite}) => Ratio(
        id: id,
        title: title,
        description: description,
        isFavorite: isFavorite,
      );

  @override
  String toString() => 'Ratio(id: $id,'
      'title: $title,'
      'description: $description,'
      'isFavorite: $isFavorite)';

  @override
  bool operator ==(covariant Ratio other) =>
      id == other.id && isFavorite == other.isFavorite;
}

const allRatios = [
  Ratio(
    id: '1',
    title: 'BMI',
    description: 'Body Mass Index',
    isFavorite: false,
  ),
  Ratio(
    id: '2',
    title: 'BMR',
    description: 'Basal Metobolic Rate',
    isFavorite: false,
  ),
  Ratio(
    id: '3',
    title: 'Waist to Hip',
    description: 'Ratio of waist to hip',
    isFavorite: false,
  ),
  Ratio(
    id: '4',
    title: 'Waist to Height',
    description: 'Ratio of waist to height',
    isFavorite: false,
  ),
  Ratio(
    id: '5',
    title: 'Bioelectrical Impedance',
    description: 'Body fat percentage calculation',
    isFavorite: false,
  ),
  Ratio(
    id: '4',
    title: 'Caliper Measure',
    description: 'Body fat percentage calculation',
    isFavorite: false,
  ),
  Ratio(
    id: '4',
    title: 'Girth Relations',
    description: 'Body fat percentage caclulation',
    isFavorite: false,
  ),
  Ratio(
    id: '4',
    title: 'Girth Measures',
    description: 'Body circumference tracking',
    isFavorite: false,
  ),
];
