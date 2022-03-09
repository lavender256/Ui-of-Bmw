import 'package:flutter/material.dart';

class PodCast{
  final String imageUrl;
  final String imageUrl2;
  final String title;
  final String subtitle;
  final int readingTime;
  final String date;
  final String info;
  final bool isBlack;

  PodCast({this.imageUrl, this.title, this.subtitle,this.readingTime,this.date,this.info,this.imageUrl2,this.isBlack=true});
}