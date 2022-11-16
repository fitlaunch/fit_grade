import 'package:fit_grade/Views/Ratios/ratios_screen.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RatiosNotifier extends StateNotifier<List<Ratio>> {
  RatiosNotifier() : super(allRatios);

  void update(Ratio ratio, bool isFavorite) {
    state = state
        .map((thisFilm) => thisFilm.id == ratio.id
            ? thisFilm.copy(isFavorite: isFavorite)
            : thisFilm)
        .toList();
  }
}
