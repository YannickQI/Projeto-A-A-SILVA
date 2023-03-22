import 'package:flutter/material.dart';

Widget pageBody(String imgUrl, String Title, String description) {
  return Padding(
    padding: const EdgeInsets.all(25),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.network(imgUrl),
        Text(
          Title,
          style: TextStyle(
            fontSize: 31,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.justify,
        ),
        Text(
          description,
          style: TextStyle(fontSize: 13, color: Colors.black87),
          textAlign: TextAlign.justify,
        ),
      ],
    ),
  );
}
