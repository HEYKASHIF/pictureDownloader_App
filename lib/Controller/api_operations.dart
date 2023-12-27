import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiOperations {
  static getTrendingPictures() async {
    await http.get(Uri.parse("https://api.pexels.com/v1/curated"), headers: {
      'Authorization':
          'DCeR7zfUGWA49ghgz2HT4JvmVvNMbCe2dSc4i03Sl00JedybUNHptvKt',
    }).then((value) {
      Map<String, dynamic> jsonData = jsonDecode(value.body);
      List pictures = jsonData['photos'];
      pictures.forEach((element) {
        Map<String, dynamic> src = element['src'];
        print(src['portrait']);

      });
    });
  }
}
