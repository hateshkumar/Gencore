class ResultData {
  bool? _success;
  String? _msg;
  int? _code;

  // ignore: unnecessary_getters_setters
  int? get code => _code;

  // ignore: unnecessary_getters_setters
  set code(int? value) {
    _code = value;
  }

  dynamic _data;
  dynamic _actionData;

  // ignore: unnecessary_getters_setters
  dynamic get data => _data;


  // ignore: unnecessary_getters_setters
  set data(dynamic value) {
    _data = value;
  }


  // ignore: unnecessary_getters_setters
  bool? get success => _success;

  // ignore: unnecessary_getters_setters
  set success(bool? value) {
    _success = value;
  }

  // ignore: unnecessary_getters_setters
  String? get msg => _msg;

  // ignore: unnecessary_getters_setters
  set msg(String? value) {
    _msg = value;
  }

  @override
  String toString() {
    return 'RepositoryResponse{_success: $_success, _msg: $_msg, _code: $_code, _data: $_data}';
  }
}
