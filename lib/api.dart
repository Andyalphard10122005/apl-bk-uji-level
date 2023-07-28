import 'dart:convert';
import 'package:http/http.dart' as http;

class API {
  postRequest({
    required String route,
    required Map<String, String> data,
  }) async {
    final String apiurl = 'http://transportation-handbags.at.ply.gg:41894/api/auth';

    String url = apiurl + route;

    return await http.post(
      Uri.parse(url),
      body: jsonEncode(data),
      headers: _header(),
    );
  }

  _header() => {
        'Content-type': 'application/json',
        'Accept': 'application/json',
      };
}
