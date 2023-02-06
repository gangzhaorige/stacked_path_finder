import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'grid_viewmodel.dart';

class GridView extends StackedView<GridViewModel> {
  const GridView({Key? key}) : super(key: key);

  @override
  Widget builder(BuildContext context, GridViewModel viewModel, Widget? child) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
      ),
    );
  }

  @override
  GridViewModel viewModelBuilder(BuildContext context) => GridViewModel();
}

