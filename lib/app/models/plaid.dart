class LinkToken {
  LinkToken({
    required this.expiration,
    required this.tokenURL,
    required this.requestId,
  });

  LinkToken.fromJson(Map<String, dynamic> json) {
    expiration = json['expiration'] as String;
    tokenURL = json['link_token'] as String;
    requestId = json['request_id'] as String;
  }
  late String expiration;
  late String tokenURL;
  late String requestId;
}
