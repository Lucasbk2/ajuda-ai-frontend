// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'SplashController.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SplashController on _SplashController, Store {
  final _$latitudeAtom = Atom(name: '_SplashController.latitude');

  @override
  double get latitude {
    _$latitudeAtom.reportRead();
    return super.latitude;
  }

  @override
  set latitude(double value) {
    _$latitudeAtom.reportWrite(value, super.latitude, () {
      super.latitude = value;
    });
  }

  final _$longitudeAtom = Atom(name: '_SplashController.longitude');

  @override
  double get longitude {
    _$longitudeAtom.reportRead();
    return super.longitude;
  }

  @override
  set longitude(double value) {
    _$longitudeAtom.reportWrite(value, super.longitude, () {
      super.longitude = value;
    });
  }

  final _$getCurrentLtgAsyncAction =
      AsyncAction('_SplashController.getCurrentLtg');

  @override
  Future<void> getCurrentLtg() {
    return _$getCurrentLtgAsyncAction.run(() => super.getCurrentLtg());
  }

  final _$getCurrentLongAsyncAction =
      AsyncAction('_SplashController.getCurrentLong');

  @override
  Future<void> getCurrentLong() {
    return _$getCurrentLongAsyncAction.run(() => super.getCurrentLong());
  }

  final _$_SplashControllerActionController =
      ActionController(name: '_SplashController');

  @override
  dynamic goBackHome(dynamic context) {
    final _$actionInfo = _$_SplashControllerActionController.startAction(
        name: '_SplashController.goBackHome');
    try {
      return super.goBackHome(context);
    } finally {
      _$_SplashControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
latitude: ${latitude},
longitude: ${longitude}
    ''';
  }
}
