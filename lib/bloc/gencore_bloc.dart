import 'dart:async';
import 'dart:collection';
import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:gencore/model/gencore_model.dart';
import 'package:gencore/model/result_data.dart';
import 'package:gencore/network/network_util.dart';
import 'package:gencore/util/constant.dart';

part 'gencore_event.dart';

part 'gencore_state.dart';

class GencoreBloc extends Bloc<GencoreEvent, GencoreState> {
  GencoreBloc(GencoreState initialState) : super(GencoreInitial());


  @override
  Stream<GencoreState> mapEventToState(
    GencoreEvent event,
  ) async* {

    if (event is GencoreLoadList) {
      yield* _mapListLoadedToState(event);
    }
  }


  Stream<GencoreState> _mapListLoadedToState(
      GencoreLoadList event,
      ) async* {
    try {

      Map<String, String> qParams = {
        'pagination': "true",
        'user_detail': "true",
        'is_approved': "approved",
        'filter_by_top_providers': "true",
        'filter_by_service': "drain-repair",
        'zip': "drain-10501",
        'from_explore': "true",
      };

      var uri = Uri.https(Constants.BASE_URL,
          Constants.ROOT_URL, qParams)
          .toString();
      ResultData resultData = await NetworkUtil.internal().get(url: uri);
      print(resultData.data);
      yield GencoreLoadedSuccess(GenCoreModel.fromJson(resultData.data));
    } catch (e) {
      print(e);
      yield GencoreLoadedFailure(e.toString());
    }
  }
}

