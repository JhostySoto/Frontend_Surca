import 'package:flutter_test/flutter_test.dart';
import 'package:surca/main.dart';

void main() {
  testWidgets('splash pasa a bienvenida y los botones navegan', (tester) async {
    await tester.pumpWidget(const SurcaApp());
    expect(find.text('Del surco a tu mesa'), findsOneWidget);

    await tester.pump(const Duration(seconds: 3));
    await tester.pumpAndSettle();
    expect(find.text('Soy productor'), findsOneWidget);
    expect(find.text('Quiero comprar'), findsOneWidget);

    await tester.tap(find.text('Quiero comprar'));
    await tester.pumpAndSettle();
    expect(find.text('Próximamente'), findsOneWidget);
  });
}
