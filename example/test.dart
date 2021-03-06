import 'package:option/option.dart';

main() {
  final some      = new Some(42);
  final inner     = some.get();
  final mapped    = some.map((n) => n / 2);
  final toSome    = some.flatMap((n) => new Some(12));
  final toNone    = some.flatMap((n) => new None<num>());
  final passed    = some.filter((n) => (n % 2) == 0);
  final failed    = some.filter((n) => (n % 2) != 0);
  final someLeft  = some.toLeft("ignored");
  final someRight = some.toRight("ignored");

  final none      = new None();
  final alt1      = none.getOrElse(42);
  final alt2      = none.orElse(() => new Some(33));
  final alt3      = none.orElse(new Some(32));
  final noneLeft  = none.toLeft("used left");
  final noneRight = none.toRight("used right");

  print('secret to all ${some.getOrElse(12)}');
}