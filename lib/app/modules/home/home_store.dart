import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

import '../../shared/models/models.dart';

part 'home_store.g.dart';

@Injectable(singleton: false)
class HomeStore = _HomeStoreBase with _$HomeStore;

abstract class _HomeStoreBase with Store {
  @observable
  UserModel user = UserModel.user!;

  @observable
  bool valuesVisible = true;

  @action
  void exchangeVisibility() => valuesVisible = !valuesVisible;
}
