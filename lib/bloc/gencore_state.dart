
part of 'gencore_bloc.dart';

enum RecordLoadStatus { InProgress, Success, Failure, None }


abstract class GencoreState extends Equatable {
}

class GencoreInitial extends GencoreState {
  @override
  List<Object> get props => [];
}


class GencoreLoadedSuccess extends GencoreState {
  final GenCoreModel genCoreModel;

  GencoreLoadedSuccess(this.genCoreModel);

  @override
  List<Object> get props => [genCoreModel
  ];
}

class GencoreLoadedFailure extends GencoreState {
  final String msg;

  GencoreLoadedFailure(this.msg);

  @override
  List<Object> get props => [];
}