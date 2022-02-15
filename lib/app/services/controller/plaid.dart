import 'package:get/state_manager.dart';
import 'package:plaid_flutter/plaid_flutter.dart';
import 'package:save_it/app/models/account.dart';
import 'package:save_it/app/models/plaid.dart';
import 'package:save_it/app/services/repository/plaid_repository.dart';

class PlaidController extends GetxController {
  RxBool isLoading = false.obs;
  late LinkToken linkToken;
  late String accessToken;
  late Account bankAccount;

  // Creating link token

  // plaidLinkToken = openPlaidOAth();

}
