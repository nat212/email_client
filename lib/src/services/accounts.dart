class AccountService {
  static late final AccountService _instance;
  
  static bool _initialised = false;

  // TODO: Implement once adding accounts is supported.
  bool get hasAccounts => false;

  AccountService._internal() {
    _instance = this;
    _initialised = true;
  }

  static AccountService get instance {
    if (!_initialised) {
      return AccountService._internal();
    }
    return _instance;
  }
}