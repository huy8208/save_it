import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_carousel_slider/flutter_custom_carousel_slider.dart';
import 'package:get/get.dart';
import 'package:news_api_flutter_package/model/article.dart';
import 'package:news_api_flutter_package/news_api_flutter_package.dart';
import 'package:save_it/app/services/providers/firestore.dart';

class HomeScreenController extends GetxController {
  HomeScreenController(
      {required this.grabNewsAPI, required this.grabFireStore});

  RxList<CarouselItem> itemList = [
    CarouselItem(
      image: const NetworkImage(
        'https://miro.medium.com/max/1400/1*RpaR1pTpRa0PUdNdfv4njA.png',
      ),
      boxDecoration: BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset.bottomCenter,
          end: FractionalOffset.topCenter,
          colors: [
            Colors.blueAccent.withOpacity(1),
            Colors.black.withOpacity(.3),
          ],
          stops: const [0.0, 1.0],
        ),
      ),
      title:
          'Push your creativity to its limits by reimagining this classic puzzle!',
      titleTextStyle: const TextStyle(
        fontSize: 12,
        color: Colors.white,
      ),
      leftSubtitle: '\$51,046 in prizes',
      rightSubtitle: '4882 participants',
      rightSubtitleTextStyle: const TextStyle(
        fontSize: 12,
        color: Colors.black,
      ),
      onImageTap: (int i) {},
    ),
    CarouselItem(
      image: const NetworkImage(
        'https://pbs.twimg.com/profile_banners/1444928438331224069/1633448972/600x200',
      ),
      title: '@coskuncay published flutter_custom_carousel_slider!',
      titleTextStyle: const TextStyle(
        fontSize: 12,
        color: Colors.white,
      ),
      leftSubtitle: '11 Feb 2022',
      rightSubtitle: 'v1.0.0',
      onImageTap: (int i) {},
    ),
  ].obs;
  final NewsAPI grabNewsAPI;

  final FireStoreProvider grabFireStore;

  // Future<RxList<CarouselItem>> parseHeadline() async {

  //   try {
  //     final Future<List<Article>> articleList = grabNewsAPI.getTopHeadlines();
  //       await Future.wait(articleList.map((item) {
  //   finalItems.add(finalItem)
  // }).toList())
  //   } catch (e) {
  //     print(e);
  //   }
  // }

  Future<void> pushTestData() async {
    try {
      await grabFireStore.db.collection('user').doc("81543532").set({
        'date_created': Timestamp.now(),
        'dob': '01/01/1980',
        'email': 'huy8208@gmail.com',
        'name': 'Huy',
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
