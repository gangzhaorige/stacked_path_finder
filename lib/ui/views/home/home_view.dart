import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_path_finder/ui/grid/staticgrid_view.dart';
import 'package:stacked_path_finder/ui/views/home/home_viewmodel.dart';

class HomeView extends StackedView<HomeViewModel> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    HomeViewModel viewModel,
    Widget? child,
  ) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: StaticGridView(
            columns: 20,
            rows: 20,
            height: 400,
            width: 400,
            unitSize: 20,
          ),
        ),
      ),
    );
  }

  @override
  HomeViewModel viewModelBuilder(BuildContext context) => HomeViewModel();
}
