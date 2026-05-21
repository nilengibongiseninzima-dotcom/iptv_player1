import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:better_player/better_player.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const IPTVApp());
}

class IPTVApp extends StatelessWidget {
  const IPTVApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IPTV Player',
      theme: ThemeData.dark(),
      home: const ChannelListScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Channel {
  final String name;
  final String url;
  final String logo;
  final String category;

  Channel({required this.name, required this.url, required this.logo, required this.category});

  factory Channel.fromJson(Map<String, dynamic> json) {
    return Channel(
      name: json['name'] ?? '',
      url: json['url'] ?? '',
      logo
