
import 'dart:convert';

import 'package:http/http.dart' as http;
Future<void>  getdata()async{
final  Url ='';
final uri =Uri.parse(Url);
final response = await http.get(uri);

if(response.statusCode==200){
  final body=response.body;
  final json = jsonDecode(body);
}
}