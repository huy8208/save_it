import 'dart:convert';

import 'package:http/http.dart';
import 'package:intl/intl.dart';
import 'package:plaid_flutter/plaid_flutter.dart';
import 'package:save_it/app/core/utils/keys.dart';
import 'package:save_it/app/models/bank_details.dart';
import 'package:save_it/app/models/plaid.dart';

class PlaidRepository {
  Future<LinkToken> createLinkToken() async {
    final dynamic body = jsonEncode(<String, dynamic>{
      'client_id': CLIENT_ID,
      'secret': SECRET_KEY,
      'client_name': 'testing',
      'country_codes': <String>['US'],
      'language': 'en',
      'user': <String, String>{'client_user_id': 'test_123'},
      'products': <String>['auth', 'transactions'],
      'redirect_uri': REDIRECT_URL
    });

    final Response response = await post(
      Uri.parse(CREATE_LINK_TOKEN_URL),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: body,
    );
    if (response.statusCode == 200) {
      // isLoading(false);
      return LinkToken.fromJson(response.body as Map<String, dynamic>);
    } else {
      return LinkToken(expiration: '', tokenURL: '', requestId: '');
    }
  }

  // Opening Plaid authentication
  Future<Map<String, dynamic>> openPlaidOAth() async {
    final LinkToken linkToken = await PlaidRepository().createLinkToken();
    if (linkToken.tokenURL != '') {
      final LinkTokenConfiguration linkTokenConfiguration =
          LinkTokenConfiguration(
        token: linkToken.tokenURL,
      );

      return <String, dynamic>{'configuration': linkTokenConfiguration};
    } else {
      return <String, dynamic>{'configuration': ''};
    }
  }

  Future<String> getAccessToken(String accessToken) async {
    final Response response = await post(
      Uri.parse(EXCHANGE_TOKEN_URL),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'client_id': CLIENT_ID,
        'secret': SECRET_KEY,
        'public_token': accessToken
      }),
    );
    if (response.statusCode == 200) {
      final String accessToken = (jsonDecode(response.body)
          as Map<String, dynamic>)['access_token'] as String;
      return accessToken;
    } else {
      return 'emptyAccess';
    }
  }

  Future<Account> getTransaction(String accessToken) async {
    // Initialize DateTime variables
    DateFormat formatter = DateFormat('yyyy-MM-dd');
    final oneMonthAgo =
        formatter.format(DateTime.now().subtract(const Duration(days: 31)));
    var currentDate = formatter.format(DateTime.now());

    final response = await post(Uri.parse(RETRIEVE_TRANSACTIONS_URL),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(<String, dynamic>{
          "client_id": CLIENT_ID,
          "secret": SECRET_KEY,
          "access_token": accessToken,
          "start_date": oneMonthAgo,
          "end_date": currentDate,
        }));
    if (response.statusCode == 200) {
      return accountFromJson(response.body);
    } else {
      print(response.body);
      throw Exception('Failed to get Transactions!');
    }
  }
}
