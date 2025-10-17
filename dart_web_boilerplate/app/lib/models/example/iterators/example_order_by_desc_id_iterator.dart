import 'package:dart_web_boilerplate/models/example/example.dart';
import 'package:smvp_dart/smvp.dart';

final class ExampleOrderByDescIdIterator<T extends Example>
    extends BaseModelIterator<T> {
  ExampleOrderByDescIdIterator() : super(index: 0);

  @override
  bool hasNext() {
    throw UnimplementedError();
  }

  @override
  T next() {
    throw UnimplementedError();
  }
}
