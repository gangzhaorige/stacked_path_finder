import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'staticgrid_viewmodel.dart';

class StaticGridView extends StackedView<StaticGridViewModel> {
  const StaticGridView({
    Key? key,
    required this.rows,
    required this.columns,
    required this.width,
    required this.height,
    required this.unitSize,
  }) : super(key: key);
  
  final int rows;
  final int columns;
  final double width;
  final double height;
  final double unitSize;

  @override
  Widget builder(BuildContext context, StaticGridViewModel viewModel, Widget? child) {
    return SizedBox(
      width: width,
      height: height,
      child: CustomPaint(
        painter: GridPainter(rows, columns, unitSize, width, height),
      ),
    );
  }

  @override
  StaticGridViewModel viewModelBuilder(BuildContext context) => StaticGridViewModel();
}

class GridPainter extends CustomPainter {
  const GridPainter(this.rows, this.columns, this.unitSize, this.width, this.height);
  final int rows;
  final int columns;
  final double unitSize;
  final double width;
  final double height;

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();

    Rect background = Rect.fromLTRB(0, 0, size.width, size.height);
    paint.color = Colors.white10;
    canvas.drawRect(background, paint);

    paint.color = Colors.blue;
    paint.strokeWidth = 0.7;
    
    for (int i = 0; i < rows + 1; i++) {
      canvas.drawLine(
        Offset(i.toDouble() * (unitSize), 0),
        Offset(i.toDouble() * (unitSize), height),
        paint,
      );
    }

    for (int i = 0; i < columns + 1; i++) {
      canvas.drawLine(
        Offset(0, i.toDouble() * (unitSize)),
        Offset(width, i.toDouble() * (unitSize)),
        paint,
      );
    }
  }
  @override
  bool shouldRepaint(GridPainter oldDelegate) => false;
}
