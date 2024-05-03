// ignore_for_file: unnecessary_type_check

import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import 'package:supercontext/supercontext.dart';

class MockBuildContext extends Mock implements BuildContext {}

void main() {
  test('checking for nulls', () {
    String? testNull;
    String? testString;
    int? testInt;
    double? testDouble;

    testString = "";
    testInt = 1;
    testDouble = 1.1;

    expect(testNull.isNull, true);
    expect(testString.isNull, false);
    expect(testInt.isNull, false);
    expect(testDouble.isNull, false);
  });

  test('checking for not nulls', () {
    String? testNull;
    String? testString;
    int? testInt;
    double? testDouble;

    testString = "";
    testInt = 1;
    testDouble = 1.1;

    expect(testNull.isNotNull, false);
    expect(testString.isNotNull, true);
    expect(testInt.isNotNull, true);
    expect(testDouble.isNotNull, true);
  });
}
