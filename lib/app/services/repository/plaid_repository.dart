import 'package:plaid_flutter/plaid_flutter.dart';
import 'package:save_it/app/services/providers/plaid.dart';

class PlaidRepository {
  final PlaidProvider plaidProvider = PlaidProvider();
  late LinkTokenConfiguration? linkTokenConfiguration;

  Future<void> openPlaidAuthentication() async {
    linkTokenConfiguration = await plaidProvider.openPlaidOAth();
    if (linkTokenConfiguration != null) {
      PlaidLink.open(configuration: linkTokenConfiguration!);
    } else {
      // add alert here
    }
  }
}
