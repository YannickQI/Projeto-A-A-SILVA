import 'package:flutter/material.dart';

Widget pageIndicator(bool currentPage) {
  return Container(
    width: currentPage ? 10 : 5,
    height: currentPage ? 10 : 5,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      color: currentPage ? Colors.black87 : Colors.black45,
    ),
  );
}
