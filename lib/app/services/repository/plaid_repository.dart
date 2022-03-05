import 'package:plaid_flutter/plaid_flutter.dart';
import 'package:save_it/app/services/providers/plaid.dart';

class PlaidRepository {
  final PlaidProvider plaidProvider = PlaidProvider();
  late LinkTokenConfiguration? linkTokenConfiguration;

  Future<void> openPlaidAuthentication() async {
    linkTokenConfiguration = await plaidProvider.openPlaidOAth();
    PlaidLink.onSuccess(_onSuccessCallback);
    PlaidLink.onEvent(_onEventCallback);
    PlaidLink.onExit(_onExitCallback);

    if (linkTokenConfiguration != null) {
      PlaidLink.open(configuration: linkTokenConfiguration!);
    } else {
      // add alert here
    }
  }

  void _onSuccessCallback(String publicToken, LinkSuccessMetadata metadata) {}

  void _onEventCallback(String eventName, LinkEventMetadata metadata) {}

  void _onExitCallback(LinkError? error, LinkExitMetadata metadata) {}
}
