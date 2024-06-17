import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:takort/main.dart';

void main() {
  testWidgets('Login Page Test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(TakortApp());

    // Verify that the logo, text fields, and buttons are present.
    expect(find.byType(Image), findsOneWidget);
    expect(find.byType(TextField), findsNWidgets(2));
    expect(find.text('Iniciar Sesión'), findsOneWidget);
    expect(find.text('Iniciar Sesión como Invitado'), findsOneWidget);

    // Enter text into the username and password fields.
    await tester.enterText(find.byType(TextField).at(0), 'testuser');
    await tester.enterText(find.byType(TextField).at(1), 'password');

    // Tap the 'Iniciar Sesión' button.
    await tester.tap(find.text('Iniciar Sesión'));
    await tester.pumpAndSettle();

    // Verify that the home page is displayed after login.
    expect(find.text('Bienvenido a Takort'), findsOneWidget);
  });

  testWidgets('Guest Login Test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(TakortApp());

    // Tap the 'Iniciar Sesión como Invitado' button.
    await tester.tap(find.text('Iniciar Sesión como Invitado'));
    await tester.pumpAndSettle();

    // Verify that the home page is displayed.
    expect(find.text('Bienvenido a Takort'), findsOneWidget);
  });
}
