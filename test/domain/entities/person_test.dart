import 'package:test/test.dart';
import 'package:unity_test_study/domain/entities/person.dart';

void main() {
  Person? person;

  setUp(() {
    person = Person(name: "Derek", age: 18, height: 1.77, weight: 80.2);
  });

  test('valor deve ser doubla e igual 25.6', () {
    expect(person!.imc, isA<double>());
    expect(person!.imc, 25.6);
  });

  test("testes variados", () {
    expect(
        person,
        allOf([
          isA<Person>(),
          isNotNull,
        ]));
  });

  group("isOlder |", () {
    test('se a idade for maior que 18, entao isOlder deve ser true ', () {
      expect(person!.isOlder, true);
    });

    test('se a idade for igual a 18, entao isOlder deve ser true ', () {
      expect(person!.isOlder, true);
    });
  });

  test("throw error", () {
    expect(() => int.parse(person!.age.toString()), throwsException);
  }, skip: "falta definir as regras de negocio");
}
