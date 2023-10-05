import 'package:avaliacao02/avaliacao02.dart' as avaliacao02;
import 'package:http/http.dart' as http;


Future<String> fetchAdvice() async {
  final url = Uri.parse('https://api.kanye.rest/');
  
  final response = await http.get(url);

  if (response.statusCode == 200) {
    return response.body;
  } else {
    throw Exception('Falha ao carregar conselho da API');
  }
}

void main() async {
  try {
    final advice = await fetchAdvice();
    print('Frase do Kanye west do momento: $advice');
  } catch (e) {
    print('Erro: $e');
  }
}
