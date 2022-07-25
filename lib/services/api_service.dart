import 'dart:convert';
import 'package:http/http.dart';
import 'package:newsapi/model/article_model.dart';

class ApiService {
  final String endPointUrl =
      "https://newsapi.org/v2/top-headlines?country=jp&apiKey=afb6c79e6cb4481fbfa2dba5afc79e25";

  Future<List<Article>> getArticle() async {
    Response res = await get(Uri.parse(endPointUrl));

    if (res.statusCode == 200) {
      Map<String, dynamic> json = jsonDecode(res.body);
      List<dynamic> body = json['articles'];
      List<Article> articles =
          body.map((dynamic item) => Article.fromJson(item)).toList();
      return articles;
    } else {
      throw ("error");
    }
  }
}
