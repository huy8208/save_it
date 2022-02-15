class Accounts {
  Accounts({
    required this.accounts,
    required this.item,
    required this.requestId,
    required this.totalTransactions,
    required this.transactions,
  });

  Accounts.fromJson(Map<String, dynamic> json) {
    accounts = json['accounts'] as List<Account>;
    item = json['item'] as dynamic;
    requestId = json['requestId'] as String;
    totalTransactions = json['totalTransactions'] as int;
    transactions = json['transactions'] as List<dynamic>;
  }

  late List<dynamic> accounts;
  late dynamic item;
  late String requestId;
  late int totalTransactions;
  late List<dynamic> transactions;
}

class Account {
  Account({
    required this.accountId,
    required this.balances,
    required this.mask,
    required this.name,
    required this.officialName,
    required this.subtype,
    required this.type,
  });

  Account.fromJson(Map<String, dynamic> json) {
    accountId = json['account_id'] as int;
    balances = json['balances'] as Map<String, dynamic>;
    mask = json['mask'] as String;
    name = json['name'] as String;
    officialName = json['official_name'] as String;
    subtype = json['subtype'] as String;
    type = json['type'] as String;
  }

  late int accountId;
  late Map<String, dynamic> balances;
  late String mask;
  late String name;
  late String officialName;
  late String subtype;
  late String type;
}
