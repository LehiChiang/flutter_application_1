import 'dart:convert' as convert;
import 'package:flutter_application_1/dao/tv/tv.dart';
import 'package:http/http.dart' as http;

Future<Tv> getTVDetails() async {
  var url = Uri.https('movie.douban.com', '/j/search_subjects/',
      {'type': 'tv', 'tag': '美剧', 'page_limit': "10", 'page_start': '0'});

  // Await the http get response, then decode the json-formatted response.
  Map<String, String> reqHeaders = {
    'Connection': 'keep-alive',
    'Referer': ' https://movie.douban.com/',
    'User-Agent':
        'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36'
  };
  var client = http.Client();
  Tv data;
  try {
    http.Response response = await client.get(url, headers: reqHeaders);
    data =
        Tv.fromJson(convert.jsonDecode(response.body) as Map<String, dynamic>);
  } finally {
    client.close();
  }
  return Future.value(data);
}