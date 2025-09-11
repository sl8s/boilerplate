import 'package:meta/meta.dart';
import 'package:smvp_dart/smvp.dart';

@immutable
base class Example extends BaseModel {
  const Example({required super.id});

  @override
  Example clone() => Example(id: id);

  @override
  Map<String, dynamic> toMap() {
    return {"id": id};
  }

  @override
  String toString() {
    return "Example(id: $id)";
  }
}
