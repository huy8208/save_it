import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_carousel_slider/flutter_custom_carousel_slider.dart';
import 'package:get/get.dart';
import 'package:news_api_flutter_package/model/article.dart';
import 'package:news_api_flutter_package/news_api_flutter_package.dart';
import 'package:save_it/app/services/providers/firestore.dart';

class HomeScreenController extends GetxController {
  HomeScreenController({required this.grabFireStore});

  final NewsAPI grabNewsAPI;
  final FireStoreProvider grabFireStore;
  late List<Article> carousel_news;

  // parseHeadline() async {
  //   newsList = await grabNewsAPI.getTopHeadlines();
  // }

  Future<void> pushTestData() async {
    try {
      await grabFireStore.db.collection('user').doc("743534254").set({
        'date_created': Timestamp.now(),
        'dob': '01/01/1980',
        'email': 'Ali@gmail.com',
        'name': 'Ali',
        'savings_goal': '\$100,000'
      });

      // await grabFireStore.db
      //     .collection('user')
      //     .doc('81543532')
      //     .collection('plaid')
      //     .add({
      //   'access_token': {'yrtjkiyjrtoi4536909021531245dfgtwgte': 'Chase'},
      // });

      // await grabFireStore.db
      //     .collection('user')
      //     .doc('81543532')
      //     .collection('budgets')
      //     .add({
      //   'budget_Catagory': 'car',
      //   'budget_TotalAmount': '10,000',
      //   'current_Amount': 5.000
      // });

    } catch (e) {
      print(e);
      rethrow;
    }
  }
}
