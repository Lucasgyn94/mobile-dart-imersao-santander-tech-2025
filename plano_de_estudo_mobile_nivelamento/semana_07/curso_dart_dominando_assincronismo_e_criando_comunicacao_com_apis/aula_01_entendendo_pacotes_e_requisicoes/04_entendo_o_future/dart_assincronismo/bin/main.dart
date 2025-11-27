import 'package:http/http.dart';

void main() {
  requestData();
}

requestData() {
  String url =
      'https://gist.githubusercontent.com/Lucasgyn94/8105fe8b423547e2cd1368ce8d9d9319/raw/ea32a8b50b84fdf7f40ac38b64ba8a7a2a6e34f6/accounts.json';

  Future<Response> futureResponse = get(Uri.parse(url));

  futureResponse.then((Response response) {
    print(response.body);
  });
}
