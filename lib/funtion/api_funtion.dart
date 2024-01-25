import 'dart:convert';

import 'package:amazonprime/model/amazon_model.dart';
import 'package:http/http.dart' as http;

Future<List<AmazonModel>> fetchData(String url) async {
  final uri = Uri.parse(url);
  final responce = await http.get(uri);
  final body = responce.body;
  final result = jsonDecode(body)['results'] as List;
  final data = result.map((e) {
   return AmazonModel(
      poster: e['poster_path'],
      title: e['title'],
      
    );
  }).toList();
  return data;
}

Future<List<AmazonModelseries>> fetchseriesData(String url) async {
  final uri = Uri.parse(url);
  final responce = await http.get(uri);
  final body = responce.body;
  final result = jsonDecode(body)['results'] as List;
  final data = result.map((e) {
   return AmazonModelseries(
      poster: e['poster_path'],
      name: e['name']??'',
    );
  }).toList();
  return data;
}

// ignore: non_constant_identifier_names
Future<List<AmazonModel>> SerchFunction(text) async {
 
  if (text == null) {
      return [];
    }
  final url='https://api.themoviedb.org/3/search/movie?query=$text&include_adult=false&language=en-US&api_key=9196c35ab323973adffd117ee8f6d5eb';
  final uri = Uri.parse(url);
  final responce = await http.get(uri);
  if(responce.statusCode==200){
     final body = responce.body;
  final result = jsonDecode(body)['results'] as List;
  final data = result.map((e) {
   return AmazonModel(
      poster: e['poster_path']??"/u40jevTRGVFZtZJpijRNnFFQPh0.jpg",
      title: e['title'],
    );
    
  }).toList();
   
  return data;
  }else {
    return[];
 
}
}