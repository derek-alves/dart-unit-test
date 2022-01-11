import 'package:test/test.dart';
import 'package:unity_test_study/domain/entities/person.dart';

void main() {
  Person? person;

  setUp(() {
    person = Person(name: "Derek", age: 23, height: 1.77, weight: 80.2);
  });

  test('valor deve ser doubla e igual 25.6', () {
    expect(person!.imc, isA<double>());
    expect(person!.imc, 25.6);
  });

  test('se a idade for maior que 18, entao isOlder deve ser true ', () async {
    expect(person!.isOlder, true);
  });
}
