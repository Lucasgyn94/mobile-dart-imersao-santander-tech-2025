import 'dart:convert';

import 'package:http/http.dart';

void main() {
  //requestData();
  requestDataAsync();
}

void requestData() {
  String url =
      'https://gist.githubusercontent.com/Lucasgyn94/8105fe8b423547e2cd1368ce8d9d9319/raw/ea32a8b50b84fdf7f40ac38b64ba8a7a2a6e34f6/accounts.json';

  Future<Response> futureResponse = get(Uri.parse(url));

  futureResponse.then((Response response) {
    print(response.body);

    List<dynamic> listaDeContas = json.decode(response.body);

    Map<String, dynamic> mapBruno = listaDeContas.firstWhere(
      (elemento) => elemento['name'] == 'Bruno',
    );

    print(mapBruno['lastName']);
  });

  print('Última coisa a acontecer na função');
}

void requestDataAsync() async {
  String url =
      'https://gist.githubusercontent.com/Lucasgyn94/8105fe8b423547e2cd1368ce8d9d9319/raw/ea32a8b50b84fdf7f40ac38b64ba8a7a2a6e34f6/accounts.json';

  var response = await get(Uri.parse(url));
  print(json.decode(response.body)[0]);

  print('De fato, a última coisa a acontecer na função!');
}
