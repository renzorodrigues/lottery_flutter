// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeStore on _HomeStoreBase, Store {
  final _$isExpandedAtom = Atom(name: '_HomeStoreBase.isExpanded');

  @override
  bool get isExpanded {
    _$isExpandedAtom.context.enforceReadPolicy(_$isExpandedAtom);
    _$isExpandedAtom.reportObserved();
    return super.isExpanded;
  }

  @override
  set isExpanded(bool value) {
    _$isExpandedAtom.context.conditionallyRunInAction(() {
      super.isExpanded = value;
      _$isExpandedAtom.reportChanged();
    }, _$isExpandedAtom, name: '${_$isExpandedAtom.name}_set');
  }

  final _$_HomeStoreBaseActionController =
      ActionController(name: '_HomeStoreBase');

  @override
  dynamic changeExpanded() {
    final _$actionInfo = _$_HomeStoreBaseActionController.startAction();
    try {
      return super.changeExpanded();
    } finally {
      _$_HomeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string = 'isExpanded: ${isExpanded.toString()}';
    return '{$string}';
  }
}
