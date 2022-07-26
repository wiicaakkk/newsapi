import 'package:flutter/material.dart';
import 'package:newsapi/model/article_model.dart';

class ArticlePage extends StatelessWidget {
  final Article article;

  ArticlePage({required this.article});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(article.title),
        backgroundColor: Colors.cyan,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
            height: 200.0,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(article.urlToImage),
                fit: BoxFit.cover
              ),
                borderRadius: BorderRadius.circular(12.0),
              ),
            ),
          Text(article.title, style: TextStyle(fontWeight: FontWeight.normal,
          fontSize: 16.0,
            )
          )
          ]
        ),
      ),
    );
  }
}
