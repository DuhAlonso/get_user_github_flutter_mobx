// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$UserStore on _UserStoreBase, Store {
  final _$userNameAtom = Atom(name: '_UserStoreBase.userName');

  @override
  String get userName {
    _$userNameAtom.context.enforceReadPolicy(_$userNameAtom);
    _$userNameAtom.reportObserved();
    return super.userName;
  }

  @override
  set userName(String value) {
    _$userNameAtom.context.conditionallyRunInAction(() {
      super.userName = value;
      _$userNameAtom.reportChanged();
    }, _$userNameAtom, name: '${_$userNameAtom.name}_set');
  }

  final _$nameAtom = Atom(name: '_UserStoreBase.name');

  @override
  String get name {
    _$nameAtom.context.enforceReadPolicy(_$nameAtom);
    _$nameAtom.reportObserved();
    return super.name;
  }

  @override
  set name(String value) {
    _$nameAtom.context.conditionallyRunInAction(() {
      super.name = value;
      _$nameAtom.reportChanged();
    }, _$nameAtom, name: '${_$nameAtom.name}_set');
  }

  final _$bioAtom = Atom(name: '_UserStoreBase.bio');

  @override
  String get bio {
    _$bioAtom.context.enforceReadPolicy(_$bioAtom);
    _$bioAtom.reportObserved();
    return super.bio;
  }

  @override
  set bio(String value) {
    _$bioAtom.context.conditionallyRunInAction(() {
      super.bio = value;
      _$bioAtom.reportChanged();
    }, _$bioAtom, name: '${_$bioAtom.name}_set');
  }

  final _$avatarUrlAtom = Atom(name: '_UserStoreBase.avatarUrl');

  @override
  String get avatarUrl {
    _$avatarUrlAtom.context.enforceReadPolicy(_$avatarUrlAtom);
    _$avatarUrlAtom.reportObserved();
    return super.avatarUrl;
  }

  @override
  set avatarUrl(String value) {
    _$avatarUrlAtom.context.conditionallyRunInAction(() {
      super.avatarUrl = value;
      _$avatarUrlAtom.reportChanged();
    }, _$avatarUrlAtom, name: '${_$avatarUrlAtom.name}_set');
  }

  final _$getUserAsyncAction = AsyncAction('getUser');

  @override
  Future getUser(dynamic user) {
    return _$getUserAsyncAction.run(() => super.getUser(user));
  }

  @override
  String toString() {
    final string =
        'userName: ${userName.toString()},name: ${name.toString()},bio: ${bio.toString()},avatarUrl: ${avatarUrl.toString()}';
    return '{$string}';
  }
}
