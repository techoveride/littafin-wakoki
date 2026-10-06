import 'package:flutter/material.dart';
import 'package:littafin_wakoki/model/hymn.dart';
import 'package:littafin_wakoki/util/hymn_details.dart';

class FavHymnDetails extends StatelessWidget {
  final bool isInTabletLayout;
  final Hymns hymns;
  final VoidCallback? onFavoriteChanged;

  const FavHymnDetails({
    Key? key,
    required this.isInTabletLayout,
    required this.hymns,
    this.onFavoriteChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HymnDetails(
      isInTabletLayout: isInTabletLayout,
      hymns: hymns,
      onFavoriteChanged: onFavoriteChanged,
    );
  }
}

