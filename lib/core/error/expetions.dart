import 'package:ecommerce_c8_friday/features/sign_up/data/models/error_model.dart';
import 'package:equatable/equatable.dart';

class Exceptions extends Equatable implements Exception {
  ErrorModel errorModel;

  Exceptions(this.errorModel);

  @override
  // TODO: implement props
  List<Object?> get props => [errorModel];

  @override
  String toString() {
    return "${errorModel.message}";
  }
}
