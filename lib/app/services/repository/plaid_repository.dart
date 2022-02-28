import 'package:plaid_flutter/plaid_flutter.dart';
import 'package:save_it/app/services/providers/plaid.dart';

class PlaidRepository {
  final PlaidProvider plaidProvider = PlaidProvider();
  Future<LinkTokenConfiguration?> parsePlaidBankAccounts() async {
    final LinkTokenConfiguration? linkTokenConfigure =
        await plaidProvider.openPlaidOAth();
    return linkTokenConfigure;
  }
}
