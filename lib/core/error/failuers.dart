import 'package:equatable/equatable.dart';

class Failures extends Equatable {
  String message;

  Failures(this.message);

  @override
  // TODO: implement props
  List<Object?> get props => [message];

  @override
  String toString() {
    // TODO: implement toString
    return message;
  }
}

class ServerFailures extends Failures {
  dynamic error;

  ServerFailures(this.error) : super(error.toString());
}

class CashedFailures extends Failures {
  CashedFailures(super.message);
}
