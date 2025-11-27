import 'package:http/http.dart';

void main() {
  fetchRecipes();
}

fetchRecipes() {
  String url =
      'https://gist.githubusercontent.com/Lucasgyn94/065a679bb2e77a2206de43cdfaea59d9/raw/c4a672836b9d93399888662eb631c857d43bf45f/recipes.json';
  Future<Response> futureResponse = get(Uri.parse(url));

  futureResponse.then((Response response) {
    print(response.body);
  });
}
