import 'package:dart_web_boilerplate/models/example/example.dart';
import 'package:dart_web_boilerplate/models/example/wrappers/example_wrapper.dart';
import 'package:dart_web_boilerplate/models/example/list_example.dart';
import 'package:meta/meta.dart';
import 'package:smvp_dart/smvp.dart';

@immutable
base class ListExampleWrapper extends BaseListModelWrapper {
  const ListExampleWrapper({required super.listMap});

  @override
  ListExample fromListMap() {
    final List<Example> listModel = List.empty(growable: true);
    for (final Map<String, dynamic> itemMap in listMap) {
      final modelWrapper = ExampleWrapper(map: itemMap);
      listModel.add(modelWrapper.fromMap());
    }
    return ListExample(listModel: listModel);
  }
}
