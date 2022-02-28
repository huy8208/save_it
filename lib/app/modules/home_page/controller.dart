import 'package:get/get.dart';
import 'package:plaid_flutter/plaid_flutter.dart';
import 'package:save_it/app/services/repository/plaid_repository.dart';

class HomeController extends GetxController {
  HomeController({required this.plaidRepository});

  final RxString _someThing = 'HOME PAGE'.obs;
  String get something => _someThing.value;
  set something(String value) => _someThing.value = value;

  late LinkTokenConfiguration? linkTokenConfiguration;

  Future<void> openPlaidAuthentication() async {
    linkTokenConfiguration = await plaidRepository.parsePlaidBankAccounts();
    if (linkTokenConfiguration != null) {
      PlaidLink.open(configuration: linkTokenConfiguration!);
    } else {
      // add alert here
    }
  }

  final PlaidRepository plaidRepository;
}
