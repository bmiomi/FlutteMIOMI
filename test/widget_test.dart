import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:todo/core/dependency/dependency.dart';
import 'package:todo/main.dart';

void main() {

  testWidgets('validar forms', (WidgetTester tester) async {

    setup();
    // Build our app and trigger a frame.
    await tester.pumpWidget(  const StateApp());
    // Verify  TEXTFORMFIEL that key "Ingrese un titulo".
    find.widgetWithText(TextFormField,'asd' );

  });

}
