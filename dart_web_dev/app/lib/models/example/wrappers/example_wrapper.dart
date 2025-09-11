import 'package:dart_web_dev/models/example/example.dart';
import 'package:meta/meta.dart';
import 'package:smvp_dart/smvp.dart';

@immutable
base class ExampleWrapper extends BaseModelWrapper {
  const ExampleWrapper({required super.map});

  @override
  Example fromMap() {
    return Example(id: map["id"]);
  }
}
