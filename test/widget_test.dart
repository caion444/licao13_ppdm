import 'package:flutter_test/flutter_test.dart';
import 'package:licao13_ppdm/main.dart';

void main() {
  testWidgets('Renderiza telas da Licao 13', (WidgetTester tester) async {
    await tester.pumpWidget(const Licao13App());
    expect(find.text('Meu Perfil Dev'), findsOneWidget);
  });
}
