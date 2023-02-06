import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:stacked_path_finder/app/app.locator.dart';
import 'package:stacked_path_finder/ui/common/app_strings.dart';
import 'package:stacked_path_finder/ui/views/home/home_viewmodel.dart';

import '../helpers/test_helpers.dart';

void main() {
  HomeViewModel _getModel() => HomeViewModel();

  group('HomeViewmodelTest -', () {
    setUp(() => registerServices());
    tearDown(() => locator.reset());

    group('incrementCounter -', () {
      test('When called once should return  Counter is: 1', () {
        final model = _getModel();
        model.incrementCounter();
        expect(model.counterLabel, 'Counter is: 1');
      });
    });
  });
}
