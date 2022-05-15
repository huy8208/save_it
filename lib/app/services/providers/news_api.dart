import 'package:news_api_flutter_package/model/article.dart';
import 'package:news_api_flutter_package/model/source.dart';
import 'package:news_api_flutter_package/news_api_flutter_package.dart';
import 'package:save_it/app/core/utils/keys.dart';
import 'package:save_it/app/models/news_model.dart';

class NewsAppApi {
  final NewsAPI _newsAPI = NewsAPI(NEWS_API);

  Future<List<NewsModel>> getTopHeadlines() async {
    final List<Article> articleList = await _newsAPI.getTopHeadlines();
    final List<NewsModel> newsList = articleList
        .map(
          (Article e) => NewsModel(
            e.source,
            e.author,
            e.title,
            e.description,
            e.url,
            e.urlToImage,
            e.publishedAt,
            e.content,
          ),
        )
        .toList();
    return newsList;
  }

  getEverythingNews() {
    Future<List<Article>> articleList = _newsAPI.getEverything();
  }

  getNewsSources() {
    Future<List<Source>> sources = _newsAPI.getSources();
  }
}
