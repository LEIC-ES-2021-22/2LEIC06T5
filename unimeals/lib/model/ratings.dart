import 'package:flutter/material.dart';
import 'package:unimeals/constants/colors.dart';

class Ratings {
  static final Ratings _ratings = Ratings._internal();

  bool liked = false;
  bool disliked = false;
  Color likecolor = mainGray;
  Color dislikecolor = mainGray;

  factory Ratings(){
    return _ratings;
  }
  Ratings._internal();
}