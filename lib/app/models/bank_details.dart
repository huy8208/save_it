import 'dart:convert';

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

  late List<Account> accounts;
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

class Transaction {
  Transaction({
    required this.accountId,
    required this.accountOwner,
    required this.amount,
    required this.authorizedDate,
    required this.authorizedDatetime,
    required this.category,
    required this.categoryId,
    required this.checkNumber,
    required this.date,
    required this.datetime,
    required this.isoCurrencyCode,
    required this.location,
    required this.merchantName,
    required this.name,
    required this.paymentChannel,
    required this.paymentMeta,
    required this.pending,
    required this.pendingTransactionId,
    required this.personalFinanceCategory,
    required this.transactionCode,
    required this.transactionId,
    required this.transactionType,
    required this.unofficialCurrencyCode,
  });

  Transaction.fromJson(Map<String, dynamic> json) {
    accountId = json['account_id'] as String;

    if (json['account_owner'] != null) {
      accountOwner = json['account_owner'] as String;
    } else {
      accountOwner = null;
    }
    amount = json['amount'] as double;

    if (json['authorized_date'] == null) {
      authorizedDate = null;
    } else {
      authorizedDate = json['authorized_date'] as DateTime;
    }

    if (json['authorized_datetime'] == null) {
      authorizedDatetime = null;
    } else {
      authorizedDatetime = json['authorized_datetime'] as DateTime;
    }

    category = json['category'] as List<String>;
    categoryId = json['category_id'] as String;
    if (json['check_number'] == null) {
      checkNumber = null;
    } else {
      checkNumber = json['check_number'] as String;
    }
    date = json['date'] as DateTime;
    isoCurrencyCode = json['iso_currency_code'] as String;

    if (json['merchant_name'] == null) {
      merchantName = null;
    } else {
      merchantName = json['merchant_name'] as String;
    }

    name = json['name'] as String;
    paymentChannel = json['payment_channel'] as String;
    pending = json['pending'] as bool;
    if (json['pending_transaction_id'] == null) {
      pendingTransactionId = null;
    } else {
      pendingTransactionId = json['pending_transaction_id'] as String;
    }
    if (json['personal_finance_category'] == null) {
      personalFinanceCategory = null;
    } else {
      personalFinanceCategory = json['personal_finance_category'] as String;
    }

    if (json['transaction_code'] == null) {
      transactionCode = null;
    } else {
      transactionCode = json['transaction_code'] as String;
    }
    transactionId = json['transaction_id'] as String;
    transactionType = json['transaction_type'] as String;

    if (json['unofficial_currency_code'] == null) {
      unofficialCurrencyCode = null;
    } else {
      unofficialCurrencyCode = json['unofficial_currency_code'] as String;
    }
  }

  String accountId = 'initial initialization';
  String? accountOwner;
  double amount = 0.0;
  DateTime? authorizedDate;
  DateTime? authorizedDatetime;
  List<String> category = <String>[];
  String categoryId = 'initial initialization';
  String? checkNumber;
  DateTime date = DateTime(1);
  dynamic datetime;
  String isoCurrencyCode = 'initial initialization';
  Location? location;
  String? merchantName;
  String name = 'initial initialization';
  String paymentChannel = 'initial initialization';
  PaymentMeta? paymentMeta;
  bool pending = false;
  String? pendingTransactionId;
  String? personalFinanceCategory;
  String? transactionCode;
  String transactionId = 'initial initialization';
  String transactionType = 'initial initialization';
  String? unofficialCurrencyCode;
}

class PaymentMeta {
  PaymentMeta({
    required this.byOrderOf,
    required this.payee,
    required this.payer,
    required this.paymentMethod,
    required this.paymentProcessor,
    required this.ppdId,
    required this.reason,
    required this.referenceNumber,
  });

  PaymentMeta.fromJson(Map<String, dynamic> json) {
    if (json['by_order_of'] == null) {
      byOrderOf = null;
    } else {
      byOrderOf = json['by_order_of'] as String;
    }

    if (json['payee'] == null) {
      payee = null;
    } else {
      payee = json['payee'] as String;
    }

    if (json['payer'] == null) {
      payer = null;
    } else {
      payer = json['payer'] as String;
    }

    if (json['payment_method'] == null) {
      paymentMethod = null;
    } else {
      paymentMethod = json['payment_method'] as String;
    }

    if (json['payment_processor'] == null) {
      paymentProcessor = null;
    } else {
      paymentProcessor = json['payment_processor'] as String;
    }

    if (json['ppd_id'] == null) {
      ppdId = null;
    } else {
      ppdId = json['ppd_id'] as String;
    }

    if (json['reason'] == null) {
      reason = null;
    } else {
      reason = json['reason'] as String;
    }

    if (json['reference_number'] == null) {
      referenceNumber = null;
    } else {
      referenceNumber = json['reference_number'] as String;
    }
  }
  String? byOrderOf;
  String? payee;
  String? payer;
  String? paymentMethod;
  String? paymentProcessor;
  String? ppdId;
  String? reason;
  String? referenceNumber;
}

class Location {
  Location({
    required this.address,
    required this.city,
    required this.country,
    required this.lat,
    required this.lon,
    required this.postalCode,
    required this.region,
    required this.storeNumber,
  });

  Location.fromJson(Map<String, dynamic> json) {
    if (json['address'] == null) {
      address = null;
    } else {
      address = json['address'] as String;
    }

    if (json['city'] == null) {
      city = null;
    } else {
      city = json['city'] as String;
    }

    if (json['country'] == null) {
      country = null;
    } else {
      country = json['country'] as String;
    }

    if (json['lat'] == null) {
      lat = null;
    } else {
      lat = json['lat'] as double;
    }

    if (json['lon'] == null) {
      lon = null;
    } else {
      lon = json['lon'] as double;
    }

    if (json['postal_code'] == null) {
      postalCode = null;
    } else {
      postalCode = json['postal_code'] as String;
    }

    if (json['region'] == null) {
      region = null;
    } else {
      region = json['region'] as String;
    }

    if (json['store_number'] == null) {
      storeNumber = null;
    } else {
      storeNumber = json['store_number'] as String;
    }
  }

  String? address;
  String? city;
  String? country;
  double? lat;
  double? lon;
  String? postalCode;
  String? region;
  String? storeNumber;
}

class FICOscore {
  FICOscore({
    required this.ficoScore,
    required this.name,
    required this.email,
    required this.imageUrl,
    required this.id,
  });
  late double ficoScore;
  late String name;
  late String email;
  late String imageUrl;
  late int id;
}
