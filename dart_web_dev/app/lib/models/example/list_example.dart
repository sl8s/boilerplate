import 'package:dart_web_dev/models/example/example.dart';
import 'package:meta/meta.dart';
import 'package:smvp_dart/smvp.dart';

@immutable
base class ListExample<T extends Example> extends BaseListModel<T> {
  const ListExample({required super.listModel});

  @override
  ListExample<T> clone() {
    List<T> newListModel = List.empty(growable: true);
    for (final T itemModel in listModel) {
      newListModel.add(itemModel.clone() as T);
    }
    return ListExample<T>(listModel: newListModel);
  }

  @override
  List<Map<String, dynamic>> toListMap() {
    final List<Map<String, dynamic>> listMap = List.empty(growable: true);
    for (final T itemModel in listModel) {
      listMap.add(itemModel.toMap());
    }
    return listMap;
  }

  @override
  String toString() {
    String str = "\n";
    for (final T itemModel in listModel) {
      str += "$itemModel,\n";
    }
    return "ListExample(listModel: [$str])";
  }
}
