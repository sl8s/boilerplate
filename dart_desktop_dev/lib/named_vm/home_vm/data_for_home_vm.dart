import 'package:dart_desktop_dev/named_vm/home_vm/enum_data_for_home_vm.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';

final class DataForHomeVM extends BaseDataForNamed<EnumDataForHomeVM> {
  DataForHomeVM(super.isLoading);

  @override
  EnumDataForHomeVM get getEnumDataForNamed {
    if(isLoading) {
      return EnumDataForHomeVM.isLoading;
    }
    if(exceptionController.isWhereNotEqualsNullParameterException()) {
      return EnumDataForHomeVM.exception;
    }
    return EnumDataForHomeVM.success;
  }

  @override
  String toString() {
    return "DataForHomeVM(isLoading: $isLoading, "
        "exceptionController: $exceptionController)";
  }
}