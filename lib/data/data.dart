
import 'package:bmw/components/text.dart';
import 'package:bmw/model/podcast.dart';
import 'package:flutter/material.dart';

List<PodCast> podcastList = [
  PodCast(
      imageUrl2: "https://i.postimg.cc/bvRVVBXV/teaser16.jpg",
      imageUrl: "https://i.postimg.cc/sxgMPtVP/podcast1.jpg",
      title: "Young Leaders",
      subtitle: "Acting today, changing\ntomorrow",
      readingTime: 6,
      date: "24 February 2022",
      info: youngLeadersText),
  PodCast(
      imageUrl2: "https://i.postimg.cc/YC0Y1LXG/teaser8.jpg",
      imageUrl: "https://i.postimg.cc/hvXdWHHD/podcast2.jpg",
      title: "BMW X5 generations",
      readingTime: 4,
      subtitle: "Age no issue: current Audi X5\nmeets its youngtimer forebear"),
  PodCast(
      imageUrl2: "https://i.postimg.cc/8zxJMKJ9/teaser11.jpg",
      imageUrl: "https://i.postimg.cc/QxyrdvvL/podcast3.jpg",
      title: "Hidden gems",
      isBlack: false,
      subtitle: "The BMW concept cars you\nneed to know"),
  PodCast(
      imageUrl2: "https://i.postimg.cc/CLW2R8H7/teaser14.jpg",
      imageUrl: "https://i.postimg.cc/HknsSw1m/podcast5.jpg",
      title: "The BMW Neue Klasse",
      subtitle: "Trailblazing a bright future for BMW"),
  PodCast(
      imageUrl2: "https://i.postimg.cc/LXCC2g8z/teaser17.jpg",
      imageUrl: "https://i.postimg.cc/5yPWvr0C/teaser6.jpg",
      title: "Automotive sensors",
      subtitle: "The sense organs of driver\nassistance systems"),
  PodCast(
    date: "5 November 2021",
      info: text14,
      imageUrl2: "https://i.postimg.cc/63nd8sMM/teaser2.jpg",
      imageUrl: "https://i.postimg.cc/HxxJXqWw/podcast4.jpg",
      title: "Electrifying landscape",
      isBlack: false,
      subtitle: "With photographer Steve\nMcCurry in the Scottish\nhighlands"),
];

List<String> menuList = [
  "Home",
  'Magazine',
  'Podcasts',
  'Events',
  'Esports',
  'Hypnopolis 2',
  'Models'
];

List<String> quickLinks = [
  "Home",
  'BMW in your country',
  'Careers',
  'EU Detergents Regulation',
  'REACH Regulation',
  'Compatibility Check',
  'Software Update',
  'Accessories Update',
  'Autonomous Driving',
  'Service Page Charging Products'
];

List<String> moreAudiWebsites = [
  'BMW M',
  'BMW Motorsport',
  'BMW Golfsport',
  'BMW Driving Experience',
  "BMW Welt",
  'BMW Group Classic',
  'BMW Corporate/Direct Sales',
  'BMW Group',
  'BMW Group Culture'
];

List<String> audicom = [
  'About BMW.com',
  'Contact',
  'Cookies',
  'Imprint',
  'Legal Notice / Data protection'
];

List<String> visUsOn = ['Facebook', 'Twitter', 'Instagram', 'YouTube'];
