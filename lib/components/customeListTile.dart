import 'package:flutter/material.dart';
import 'package:newsapi/model/article_model.dart';

Widget customeListTile(Article article) {
  return Container(
    margin: EdgeInsets.all(12.0),
    padding: EdgeInsets.all(8.0),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(18.0),
      boxShadow: [
        BoxShadow(
          color: Colors.black12,
          blurRadius: 3.0,
        ),
      ]
    ),
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
        // SizedBox(height: 8.0),
        // Container(
        //   decoration: BoxDecoration(
        //     color: Colors.red,
        //     borderRadius: BorderRadius.circular(30.0),
        //   ),
        //   child: Text(article.source.name),
        // ),
        SizedBox(height: 8.0),
        Text(article.title, style: TextStyle(fontWeight: FontWeight.normal,
        fontSize: 16.0,
          )
        )
      ],
    ),
  );
}
