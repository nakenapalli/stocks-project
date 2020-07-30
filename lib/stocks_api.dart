import 'package:http/http.dart' as http;

Future fetchExchangesList() async {
  final response = await http.get(
    'https://api.coingecko.com/api/v3/exchanges?page=1',
    headers: {"Accept": "application/json"},
  );

  if (response.statusCode == 200) {
    return response;
  } else {
    throw Exception('Get request failed');
  }
}
